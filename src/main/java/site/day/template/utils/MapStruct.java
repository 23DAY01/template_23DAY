package site.day.template.utils;


import site.day.template.aaTest.a;
import site.day.template.aaTest.b;
import site.day.template.aaTest.c;
import site.day.template.aaTest.d;
import site.day.template.pojo.domain.Resource;
import site.day.template.pojo.domain.UserAuth;
import site.day.template.pojo.domain.UserInfo;
import site.day.template.pojo.dto.RoleResourceDTO;
import org.mapstruct.InjectionStrategy;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.springframework.stereotype.Component;
import site.day.template.pojo.dto.UserAuthDTO;
import site.day.template.pojo.dto.UserInfoDTO;

import java.util.List;


/**
 * @Description JavaBean转换工具
 * @ClassName MapStruct
 * @Author 23DAY
 * @Date 2022/9/14 22:12
 * @Version 1.0
 */
@Mapper(componentModel = "spring" , injectionStrategy = InjectionStrategy.CONSTRUCTOR)
@Component
public interface MapStruct {

//    @Mappings({
//            @Mapping(target = "id",source = "studentId"),
//            @Mapping(target = "name",source = "studentName"),
//            @Mapping(target = "age",source = "studentAge")
//    })
//    Student studentConvert(StudentRequestVo studentRequestVo);

    //lombok和mapstruct冲突了 这个不生效
    //@Mapping(target = "d1", source = "d1")
    //Dto Domain2Dto(Domain domain);
    //
    //List<Dto> Domains2Dtos(List<Domain> domains);
    //
    //
    //@Mappings({@Mapping(target = "vos", source = "domain2s"),
    //        @Mapping(target = "voc1", source = "c1")})
    //Vo Dto2Vo(Dto dto);
    //
    //List<Vo> Dtos2Vos(List<Dto> dtos);

    @Mapping(source = "c",target = "d")
    b a2b(a a);
    @Mapping(source = "d",target = "c")
    a b2a(b b);
    c d2c(d d);
    d c2d(c c);


    /*
      资源认证  转换
     */
    @Mapping(target = "resourceId" , source = "id")
    RoleResourceDTO resource2roleResource(Resource resource);

    List<RoleResourceDTO> resources2roleResources(List<Resource> resourceList);


    /*
     * 用户认证 转换
     **/
    UserAuth UserAuthDTO2UserAuth(UserAuthDTO userAuthDto);

    List<UserAuth> UserAuthDTOList2UserAuthList(List<UserAuthDTO> userAuthDTOS);

    UserAuthDTO UserAuth2UserAuthDTO(UserAuth userAuth);

    List<UserAuthDTO> UserAuthList2UserAuthDTOList(List<UserAuth> userAuths);


    /*
     * 用户信息 转换
     **/

    UserInfoDTO UserInfo2UserInfoDTO(UserInfo userInfo);

    List<UserInfoDTO> UserInfoList2UserInfoDTOList(List<UserInfo> userInfos);

}

