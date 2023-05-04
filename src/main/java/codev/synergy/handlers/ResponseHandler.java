package codev.synergy.handlers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.HashMap;
import java.util.Map;

public class ResponseHandler<T> {

    public static final String MSG_SUCCESS = "Successful";
    public static final String MSG_FAIL = "Failed";

    private final T responseObj;
    public ResponseHandler(T responseObj) {
        this.responseObj = responseObj;
    }

    public ResponseEntity<Map<String, Object>> buildResponse(
        String msg, HttpStatus status) {

        Map<String, Object> response = new HashMap<>();
        response.put("result", this.responseObj);
        response.put("message", msg);
        response.put("status", status);

        return new ResponseEntity<>(response, status);

    }

}
