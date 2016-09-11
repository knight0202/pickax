package com.miner.pickax.main.mapper;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.miner.pickax.main.vo.CountryInfoVo;


@MapperScan
public interface CountryMapper {
	//메인화면 초기화 시에 전체 리스트 불러옴
	public ArrayList<CountryInfoVo> getCountryList();
}
