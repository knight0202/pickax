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
	private String e164;
	private String area_km2;
	private String timeZoneInCapitalEn;
	
	
	public String getTimeZoneInCapitalEn() {
		return timeZoneInCapitalEn;
	}
	public void setTimeZoneInCapitalEn(String timeZoneInCapitalEn) {
		this.timeZoneInCapitalEn = timeZoneInCapitalEn;
	}
	public String getArea_km2() {
		return area_km2;
	}
	public void setArea_km2(String area_km2) {
		this.area_km2 = area_km2;
	}
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
		if(continent != null){
			if(continent.equals("Africa")){
				return "아프리카 ( Africa )";
			}else if(continent.equals("Asia")){
				return "아시아 ( Asia )";
			}else if(continent.equals("Antarctica")){
				return "남극대륙 ( Antarctica )";
			}else if(continent.equals("Europe")){
				return "유럽 ( Europe )";
			}else if(continent.equals("North America")){
				return "북아메리카 ( North America )";
			}else if(continent.equals("Oceania")){
				return "오세아니아 ( Oceania )";
			}else if(continent.equals("South America")){
				return "남아메리카 ( South America )";
			}else{
				return continent;
			}
		}
		else{
			return continent;
		}
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
	public String getE164() {
		return e164;
	}
	public void setE164(String e164) {
		this.e164 = e164;
	}
	
	
}
