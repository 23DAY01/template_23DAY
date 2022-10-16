package site.day.template.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.parameters.P;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import site.day.template.enums.StatusCodeEnum;
import site.day.template.exception.BusinessException;
import site.day.template.mapper.UserAuthMapper;
import site.day.template.mapper.UserInfoMapper;
import site.day.template.pojo.domain.UserAuth;
import site.day.template.pojo.domain.UserInfo;
import site.day.template.pojo.dto.UserAuthDTO;
import site.day.template.pojo.dto.UserDetail;
import site.day.template.pojo.dto.UserInfoDTO;
import site.day.template.service.RoleService;
import site.day.template.utils.MapStruct;
import site.day.template.utils.RedisUtil;
import site.day.template.utils.WebUtil;
import eu.bitwalker.useragentutils.UserAgent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.List;
import java.util.Objects;

import static site.day.template.enums.ZoneEnum.SHANGHAI;


/**
 * 用户详细信息服务
 *
 * @author yezhiqiu
 * @date 2021/08/10
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private MapStruct mapStruct;

    @Autowired
    private UserAuthMapper userAuthMapper;
    @Autowired
    private UserInfoMapper userInfoMapper;

    @Autowired
    private RoleService roleService;

    @Autowired
    private RedisUtil redisUtil;
    @Resource
    private HttpServletRequest request;

    @Override
    public UserDetails loadUserByUsername(String username) {
//        用户名不能为空
//        if(username.isEmpty()){
//            throw new BadCredentialsException(StatusCodeEnum.AUTH_USERNAME_EMPTY.getMessage());
//        }
        username = username != null ? username.trim() : "";
        // 查询账号是否存在
        UserAuth userAuth = userAuthMapper.selectOne(new LambdaQueryWrapper<UserAuth>()
                .eq(UserAuth::getUsername, username));
        if (Objects.isNull(userAuth)) {
            // 这里springSecurity的逻辑有点不合适 因为要隐藏usernameNotFound异常所以抛出了一个badCredential异常 但是对于这个异常的处理必须打印log于是很麻烦
            throw new UsernameNotFoundException(StatusCodeEnum.AUTH_UorP_ERROR.getMessage());
        }
        // 封装登录信息
        return convertUserDetail(userAuth, request);
    }

    /**
     * 封装用户登录信息
     *
     * @param user    用户账号
     * @param request 请求
     * @return 用户登录信息
     */
    public UserDetail convertUserDetail(UserAuth user, HttpServletRequest request) {
        // 查询账号信息
        UserInfo userInfo = userInfoMapper.selectById(user.getUserInfoId());
        // 查询账号角色
        List<String> roleList = roleService.listRolesByUserInfoId(userInfo.getId());
        // 获取设备信息
        String ipAddress = WebUtil.getIpAddress(request);
        String ipSource = WebUtil.getIpSource(ipAddress);
        UserAgent userAgent = WebUtil.getUserAgent(request);

        // pojo转换
        UserInfoDTO userInfoDto = mapStruct.userInfo2UserInfoDto(userInfo);
        UserAuthDTO userAuthDto = mapStruct.userAuth2userAuthDto(user);

        //填充属性
        userAuthDto.setOs(userAgent.getOperatingSystem().getName());
        userAuthDto.setBrowser(userAgent.getBrowser().getName());
        userAuthDto.setLastLoginTime(LocalDateTime.now(ZoneId.of(SHANGHAI.getZone())));
        userAuthDto.setIpAddress(ipAddress);
        userAuthDto.setIpSource(ipSource);

        UserDetail userDetail = new UserDetail();
        userDetail.setUserInfoDTO(userInfoDto);
        userDetail.setUserAuthDto(userAuthDto);
        userDetail.setRoleList(roleList);

        // 封装权限集合
        return userDetail;
    }
}
