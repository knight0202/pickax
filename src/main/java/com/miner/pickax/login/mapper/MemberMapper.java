package com.miner.pickax.login.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.miner.pickax.login.vo.UserVo;



@MapperScan
public interface MemberMapper {
	
	public UserVo getUser(UserVo userVo);
	public void setUser(UserVo userVo);
	
}
