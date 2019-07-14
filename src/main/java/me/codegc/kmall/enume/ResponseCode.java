package me.codegc.kmall.enume;

/**
 *
 * Create BY jdode
 *
 * Des: ResponseCode 状态枚举
 *
 * Time: 2019年07月14日13:01:28
 *
 * <a href="https://github.com/YooDing/">Github<a>
 */
public enum ResponseCode {
	
	normal(2000,"操作正常!"),
	error(-2000,"操作失败!");
	private Integer code;
    private String desc;

    ResponseCode(int code,String desc){
        this.code = code;
        this.desc = desc;
    }

    public int getCode(){
        return code;
    }

    public String getDesc(){
        return desc;
    }

}
