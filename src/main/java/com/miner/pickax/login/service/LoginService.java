package com.miner.pickax.login.service;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.miner.pickax.login.mapper.MemberMapper;
import com.miner.pickax.login.vo.UserVo;



public class LoginService implements UserDetailsService {
	@Autowired MemberMapper memberMapper;
	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		
		UserVo userVo = new UserVo();
		
		userVo.setUserID(username);
		
		UserVo vo = memberMapper.getUser(userVo);
		
		String pwd = vo.getUserPW();
		String auth = vo.getUserType();
		
		Collection<SimpleGrantedAuthority> role = new ArrayList<SimpleGrantedAuthority>();
		
		role.add(new SimpleGrantedAuthority(auth));
		
		UserDetails user = new User(username,pwd,role);
		
		return user;
	}
}
