package com.oplus.compat.telephony;

import android.util.Log;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class DisconnectCauseNative {
    @Oem
    public static int ACCESS_INFORMATION_DISCARDED = 0;
    @Oem
    public static int BEARER_CAPABILITY_NOT_AUTHORIZED = 0;
    @Oem
    public static int BEARER_CAPABILITY_UNAVAILABLE = 0;
    @Oem
    public static int BEARER_SERVICE_NOT_IMPLEMENTED = 0;
    @Oem
    public static int CALL_FAIL_DESTINATION_OUT_OF_ORDER = 0;
    @Oem
    public static int CALL_FAIL_NO_ANSWER_FROM_USER = 0;
    @Oem
    public static int CALL_FAIL_NO_USER_RESPONDING = 0;
    @Oem
    public static int CALL_REJECTED = 0;
    @Oem
    public static int CHANNEL_UNACCEPTABLE = 0;
    @Oem
    public static int CONDITIONAL_IE_ERROR = 0;
    @Oem
    public static int FACILITY_REJECTED = 0;
    @Oem
    public static int INCOMING_CALLS_BARRED_WITHIN_CUG = 0;
    @Oem
    public static int INCOMPATIBLE_DESTINATION = 0;
    @Oem
    public static int INFORMATION_ELEMENT_NON_EXISTENT = 0;
    @Oem
    public static int INTERWORKING_UNSPECIFIED = 0;
    @Oem
    public static int INVALID_MANDATORY_INFORMATION = 0;
    @Oem
    public static int INVALID_TRANSACTION_IDENTIFIER = 0;
    @Oem
    public static int INVALID_TRANSIT_NW_SELECTION = 0;
    @Oem
    public static int MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE = 0;
    @Oem
    public static int MESSAGE_TYPE_NON_IMPLEMENTED = 0;
    @Oem
    public static int MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE = 0;
    @Oem
    public static int NETWORK_OUT_OF_ORDER = 0;
    @Oem
    public static int NO_CIRCUIT_AVAIL = 0;
    @Oem
    public static int NO_ROUTE_TO_DESTINATION = 0;
    @Oem
    public static int NUMBER_CHANGED = 0;
    @Oem
    public static int ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE = 0;
    @Oem
    public static int OPERATOR_DETERMINED_BARRING = 0;
    @Oem
    public static int PREEMPTION = 0;
    @Oem
    public static int PROTOCOL_ERROR_UNSPECIFIED = 0;
    @Oem
    public static int QOS_UNAVAILABLE = 0;
    @Oem
    public static int RECOVERY_ON_TIMER_EXPIRED = 0;
    @Oem
    public static int REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE = 0;
    @Oem
    public static int REQUESTED_FACILITY_NOT_IMPLEMENTED = 0;
    @Oem
    public static int REQUESTED_FACILITY_NOT_SUBSCRIBED = 0;
    @Oem
    public static int RESOURCES_UNAVAILABLE_OR_UNSPECIFIED = 0;
    @Oem
    public static int RESP_TO_STATUS_ENQUIRY = 0;
    @Oem
    public static int SEMANTICALLY_INCORRECT_MESSAGE = 0;
    @Oem
    public static int SERVICE_OPTION_NOT_AVAILABLE = 0;
    @Oem
    public static int SERVICE_OR_OPTION_NOT_IMPLEMENTED = 0;
    @Oem
    public static int SWITCHING_EQUIPMENT_CONGESTION = 0;
    private static final String TAG = "DisconnectCause";
    @Oem
    public static int TEMPORARY_FAILURE;
    @Oem
    public static int USER_NOT_MEMBER_OF_CUG;

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefObject<Integer> ACCESS_INFORMATION_DISCARDED;
        public static RefObject<Integer> BEARER_CAPABILITY_NOT_AUTHORIZED;
        public static RefObject<Integer> BEARER_CAPABILITY_UNAVAILABLE;
        public static RefObject<Integer> BEARER_SERVICE_NOT_IMPLEMENTED;
        public static RefObject<Integer> CALL_FAIL_DESTINATION_OUT_OF_ORDER;
        public static RefObject<Integer> CALL_FAIL_NO_ANSWER_FROM_USER;
        public static RefObject<Integer> CALL_FAIL_NO_USER_RESPONDING;
        public static RefObject<Integer> CALL_REJECTED;
        public static RefObject<Integer> CHANNEL_UNACCEPTABLE;
        public static RefObject<Integer> CONDITIONAL_IE_ERROR;
        public static RefObject<Integer> FACILITY_REJECTED;
        public static RefObject<Integer> INCOMING_CALLS_BARRED_WITHIN_CUG;
        public static RefObject<Integer> INCOMPATIBLE_DESTINATION;
        public static RefObject<Integer> INFORMATION_ELEMENT_NON_EXISTENT;
        public static RefObject<Integer> INTERWORKING_UNSPECIFIED;
        public static RefObject<Integer> INVALID_MANDATORY_INFORMATION;
        public static RefObject<Integer> INVALID_TRANSACTION_IDENTIFIER;
        public static RefObject<Integer> INVALID_TRANSIT_NW_SELECTION;
        public static RefObject<Integer> MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE;
        public static RefObject<Integer> MESSAGE_TYPE_NON_IMPLEMENTED;
        public static RefObject<Integer> MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE;
        public static RefObject<Integer> NETWORK_OUT_OF_ORDER;
        public static RefObject<Integer> NO_CIRCUIT_AVAIL;
        public static RefObject<Integer> NO_ROUTE_TO_DESTINATION;
        public static RefObject<Integer> NUMBER_CHANGED;
        public static RefObject<Integer> ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE;
        public static RefObject<Integer> OPERATOR_DETERMINED_BARRING;
        public static RefObject<Integer> PREEMPTION;
        public static RefObject<Integer> PROTOCOL_ERROR_UNSPECIFIED;
        public static RefObject<Integer> QOS_UNAVAILABLE;
        public static RefObject<Integer> RECOVERY_ON_TIMER_EXPIRED;
        public static RefObject<Integer> REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE;
        public static RefObject<Integer> REQUESTED_FACILITY_NOT_IMPLEMENTED;
        public static RefObject<Integer> REQUESTED_FACILITY_NOT_SUBSCRIBED;
        public static RefObject<Integer> RESOURCES_UNAVAILABLE_OR_UNSPECIFIED;
        public static RefObject<Integer> RESP_TO_STATUS_ENQUIRY;
        public static RefObject<Integer> SEMANTICALLY_INCORRECT_MESSAGE;
        public static RefObject<Integer> SERVICE_OPTION_NOT_AVAILABLE;
        public static RefObject<Integer> SERVICE_OR_OPTION_NOT_IMPLEMENTED;
        public static RefObject<Integer> SWITCHING_EQUIPMENT_CONGESTION;
        public static RefObject<Integer> TEMPORARY_FAILURE;
        public static RefObject<Integer> USER_NOT_MEMBER_OF_CUG;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.telephony.DisconnectCause");
        }
    }

    private DisconnectCauseNative() {
    }

    static {
        if (VersionUtils.isQ()) {
            NO_CIRCUIT_AVAIL = ReflectInfo.NO_CIRCUIT_AVAIL.get(null).intValue();
            NO_ROUTE_TO_DESTINATION = ReflectInfo.NO_ROUTE_TO_DESTINATION.get(null).intValue();
            OPERATOR_DETERMINED_BARRING = ReflectInfo.OPERATOR_DETERMINED_BARRING.get(null).intValue();
            CALL_FAIL_NO_USER_RESPONDING = ReflectInfo.CALL_FAIL_NO_USER_RESPONDING.get(null).intValue();
            CALL_FAIL_NO_ANSWER_FROM_USER = ReflectInfo.CALL_FAIL_NO_ANSWER_FROM_USER.get(null).intValue();
            CALL_FAIL_DESTINATION_OUT_OF_ORDER = ReflectInfo.CALL_FAIL_DESTINATION_OUT_OF_ORDER.get(null).intValue();
            BEARER_CAPABILITY_NOT_AUTHORIZED = ReflectInfo.BEARER_CAPABILITY_NOT_AUTHORIZED.get(null).intValue();
            CHANNEL_UNACCEPTABLE = ReflectInfo.CHANNEL_UNACCEPTABLE.get(null).intValue();
            CALL_REJECTED = ReflectInfo.CALL_REJECTED.get(null).intValue();
            NUMBER_CHANGED = ReflectInfo.NUMBER_CHANGED.get(null).intValue();
            PREEMPTION = ReflectInfo.PREEMPTION.get(null).intValue();
            FACILITY_REJECTED = ReflectInfo.FACILITY_REJECTED.get(null).intValue();
            RESP_TO_STATUS_ENQUIRY = ReflectInfo.RESP_TO_STATUS_ENQUIRY.get(null).intValue();
            NETWORK_OUT_OF_ORDER = ReflectInfo.NETWORK_OUT_OF_ORDER.get(null).intValue();
            TEMPORARY_FAILURE = ReflectInfo.TEMPORARY_FAILURE.get(null).intValue();
            SWITCHING_EQUIPMENT_CONGESTION = ReflectInfo.SWITCHING_EQUIPMENT_CONGESTION.get(null).intValue();
            ACCESS_INFORMATION_DISCARDED = ReflectInfo.ACCESS_INFORMATION_DISCARDED.get(null).intValue();
            REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE = ReflectInfo.REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE.get(null).intValue();
            RESOURCES_UNAVAILABLE_OR_UNSPECIFIED = ReflectInfo.RESOURCES_UNAVAILABLE_OR_UNSPECIFIED.get(null).intValue();
            QOS_UNAVAILABLE = ReflectInfo.QOS_UNAVAILABLE.get(null).intValue();
            REQUESTED_FACILITY_NOT_SUBSCRIBED = ReflectInfo.REQUESTED_FACILITY_NOT_SUBSCRIBED.get(null).intValue();
            INCOMING_CALLS_BARRED_WITHIN_CUG = ReflectInfo.INCOMING_CALLS_BARRED_WITHIN_CUG.get(null).intValue();
            BEARER_CAPABILITY_UNAVAILABLE = ReflectInfo.BEARER_CAPABILITY_UNAVAILABLE.get(null).intValue();
            SERVICE_OPTION_NOT_AVAILABLE = ReflectInfo.SERVICE_OPTION_NOT_AVAILABLE.get(null).intValue();
            BEARER_SERVICE_NOT_IMPLEMENTED = ReflectInfo.BEARER_SERVICE_NOT_IMPLEMENTED.get(null).intValue();
            REQUESTED_FACILITY_NOT_IMPLEMENTED = ReflectInfo.REQUESTED_FACILITY_NOT_IMPLEMENTED.get(null).intValue();
            ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE = ReflectInfo.ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE.get(null).intValue();
            SERVICE_OR_OPTION_NOT_IMPLEMENTED = ReflectInfo.SERVICE_OR_OPTION_NOT_IMPLEMENTED.get(null).intValue();
            INVALID_TRANSACTION_IDENTIFIER = ReflectInfo.INVALID_TRANSACTION_IDENTIFIER.get(null).intValue();
            USER_NOT_MEMBER_OF_CUG = ReflectInfo.USER_NOT_MEMBER_OF_CUG.get(null).intValue();
            INCOMPATIBLE_DESTINATION = ReflectInfo.INCOMPATIBLE_DESTINATION.get(null).intValue();
            INVALID_TRANSIT_NW_SELECTION = ReflectInfo.INVALID_TRANSIT_NW_SELECTION.get(null).intValue();
            SEMANTICALLY_INCORRECT_MESSAGE = ReflectInfo.SEMANTICALLY_INCORRECT_MESSAGE.get(null).intValue();
            INVALID_MANDATORY_INFORMATION = ReflectInfo.INVALID_MANDATORY_INFORMATION.get(null).intValue();
            MESSAGE_TYPE_NON_IMPLEMENTED = ReflectInfo.MESSAGE_TYPE_NON_IMPLEMENTED.get(null).intValue();
            MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE = ReflectInfo.MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE.get(null).intValue();
            INFORMATION_ELEMENT_NON_EXISTENT = ReflectInfo.INFORMATION_ELEMENT_NON_EXISTENT.get(null).intValue();
            CONDITIONAL_IE_ERROR = ReflectInfo.CONDITIONAL_IE_ERROR.get(null).intValue();
            MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE = ReflectInfo.MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE.get(null).intValue();
            RECOVERY_ON_TIMER_EXPIRED = ReflectInfo.RECOVERY_ON_TIMER_EXPIRED.get(null).intValue();
            PROTOCOL_ERROR_UNSPECIFIED = ReflectInfo.PROTOCOL_ERROR_UNSPECIFIED.get(null).intValue();
            INTERWORKING_UNSPECIFIED = ReflectInfo.INTERWORKING_UNSPECIFIED.get(null).intValue();
            return;
        }
        Log.e(TAG, "not supported before Q");
    }
}
