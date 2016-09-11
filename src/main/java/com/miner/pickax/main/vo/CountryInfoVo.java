package com.miner.pickax.main.vo;

public class CountryInfoVo {
	/*국가별 기본정보 VO
	 * 
	 * 작성일 : 2016.09.07
	 * 장성자 : 유상현
	 * 
	 * 
	 * */
	private int id;
	private String countryNameEn;
	private String iso;
	private String countryNameKr;
	private String iso2;
	private String iso3;
	private String continent;
	private String capitalEn;
	private String capitalKr;
	private String currency;
	private int E164;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountryNameEn() {
		return countryNameEn;
	}
	public void setCountryNameEn(String countryNameEn) {
		this.countryNameEn = countryNameEn;
	}
	public String getIso() {
		return iso;
	}
	public void setIso(String iso) {
		this.iso = iso;
	}
	public String getCountryNameKr() {
		return countryNameKr;
	}
	public void setCountryNameKr(String countryNameKr) {
		this.countryNameKr = countryNameKr;
	}
	public String getIso2() {
		return iso2;
	}
	public void setIso2(String iso2) {
		this.iso2 = iso2;
	}
	public String getIso3() {
		return iso3;
	}
	public void setIso3(String iso3) {
		this.iso3 = iso3;
	}
	public String getContinent() {
		return continent;
	}
	public void setContinent(String continent) {
		this.continent = continent;
	}
	public String getCapitalEn() {
		return capitalEn;
	}
	public void setCapitalEn(String capitalEn) {
		this.capitalEn = capitalEn;
	}
	public String getCapitalKr() {
		return capitalKr;
	}
	public void setCapitalKr(String capitalKr) {
		this.capitalKr = capitalKr;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public int getE164() {
		return E164;
	}
	public void setE164(int e164) {
		E164 = e164;
	}
	
	
}
