package com.guyu.ssm1.user.model;

import com.guyu.ssm1.base.model.BaseEntity;
import com.guyu.ssm1.role.model.RoleEntity;

import java.util.Date;

/**
 * Created by GUYU on 2016/12/18.
 */
public class UserEntity extends BaseEntity {
    private static final long serialVersionUID = 1L;
    private String username;
    private String password;
    private String sex;
    private String birthday;
    private String telephone;
    private String email;
    private Date createtime;
    private Date updatetime;
    private RoleEntity role;

    public UserEntity() {
    }

    public UserEntity(UserEntity userEntity) {
        this.id = userEntity.getId();
        this.username = userEntity.getUsername();
        this.password = userEntity.getPassword();
        this.sex = userEntity.getSex();
        this.birthday = userEntity.getBirthday();
        this.telephone = userEntity.getTelephone();
        this.email = userEntity.getEmail();
        this.createtime = userEntity.getCreatetime();
        this.updatetime = userEntity.getUpdatetime();
        this.role = userEntity.getRole();
    }


    public UserEntity(Long id,String username, String password, String sex, String birthday, String telephone, String email, Date createtime, Date updatetime, RoleEntity role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.birthday = birthday;
        this.telephone = telephone;
        this.email = email;
        this.createtime = createtime;
        this.updatetime = updatetime;
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public RoleEntity getRole() {
        return role;
    }

    public void setRole(RoleEntity role) {
        this.role = role;
    }
}
