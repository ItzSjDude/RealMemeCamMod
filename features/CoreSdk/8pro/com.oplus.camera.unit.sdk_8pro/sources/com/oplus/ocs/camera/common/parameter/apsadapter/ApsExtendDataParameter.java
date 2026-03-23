package com.oplus.ocs.camera.common.parameter.apsadapter;

import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
/* loaded from: classes.dex */
public class ApsExtendDataParameter extends ApsBaseParameter {
    public static final ApsBaseParameter.Key<byte[]> KEY_LINEAR_MASK = new ApsBaseParameter.Key<>("com.oplus.linear.mask", byte[].class);
    public static final ApsBaseParameter.Key<byte[]> KEY_LOCAL_HDR_DATA = new ApsBaseParameter.Key<>("com.oplus.local.hdr", byte[].class);
    public static final ApsBaseParameter.Key<byte[]> KEY_SRC_IMAGE = new ApsBaseParameter.Key<>("com.oplus.src.image", byte[].class);
    public static final ApsBaseParameter.Key<byte[]> KEY_SRC_IMAGE_BLOCK = new ApsBaseParameter.Key<>("com.oplus.src.image.block", byte[].class);
    public static final ApsBaseParameter.Key<byte[]> KEY_WATERMARK = new ApsBaseParameter.Key<>("com.oplus.watermark", byte[].class);
    public static final ApsBaseParameter.Key<byte[]> KEY_WATERMARK_CONFIG = new ApsBaseParameter.Key<>("com.oplus.watermark.config", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_REAR_DEPTH = new ApsBaseParameter.Key<>("com.oplus.rear.depth", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_REAR_DEPTH_CONFIG = new ApsBaseParameter.Key<>("com.oplus.rear.depth.config", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_FRONT_DEPTH = new ApsBaseParameter.Key<>("com.oplus.front.depth", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_FRONT_DEPTH_CONFIG = new ApsBaseParameter.Key<>("com.oplus.front.depth.config", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_FRONT_SEGMENT = new ApsBaseParameter.Key<>("com.oplus.front.segment", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_FRONT_HAIR_MASK = new ApsBaseParameter.Key<>("com.oplus.front.hair.mask", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_FRONT_MATTE_INFO = new ApsBaseParameter.Key<>("com.oplus.front.matter.info", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_FRONT_NEGEVIMG = new ApsBaseParameter.Key<>("com.oplus.front.negevimg", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_FILTER = new ApsBaseParameter.Key<>("com.oplus.filter", byte[].class, null);
    public static final ApsBaseParameter.Key<byte[]> KEY_DEPTH_RULE_CONFIG = new ApsBaseParameter.Key<>("com.oplus.depth.rule.config", byte[].class, null);
}
