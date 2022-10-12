package site.day.template.pojo.dto;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import static site.day.template.constant.CommonConst.FALSE;


@Data
public class UserDetail implements UserDetails {

    //    用户认证
    private UserAuthDTO userAuthDto;

    //    用户信息
    private UserInfoDTO userInfoDTO;

    //    权限列表
    private List<String> roleList;




    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.roleList.stream()
                .map(SimpleGrantedAuthority::new)
                .collect(Collectors.toSet());
    }

    @Override
    public String getPassword() {
        return this.userAuthDto.getPassword();
    }

    @Override
    public String getUsername() {
        return this.userAuthDto.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return this.userAuthDto.getIsDisabled() == FALSE;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

}