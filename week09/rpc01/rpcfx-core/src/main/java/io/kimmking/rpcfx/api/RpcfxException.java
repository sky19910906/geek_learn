package io.kimmking.rpcfx.api;

public class RpcfxException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	

	// 错误code
	public String errorCode;
	//异常信息
	public String errorMsg;

	public RpcfxException(String message) {
		super(message);
	}
	
	public RpcfxException(String errorCode, String message) {
		super(message);
		this.errorCode = errorCode;
	}
	
	public RpcfxException(String errorCode, Throwable cause) {
		super(cause);
		this.errorCode = errorCode;
	}

	public String getErrorCode() {
		return errorCode;
	}

}
