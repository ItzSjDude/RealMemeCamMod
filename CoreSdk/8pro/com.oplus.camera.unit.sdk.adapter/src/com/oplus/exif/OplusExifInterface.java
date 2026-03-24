package com.oplus.exif;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.util.SparseIntArray;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class OplusExifInterface {
    private static final String DATETIME_FORMAT_STR = "yyyy:MM:dd HH:mm:ss";
    public static final ByteOrder DEFAULT_BYTE_ORDER;
    public static final int DEFINITION_NULL = 0;
    private static final String GPS_DATE_FORMAT_STR = "yyyy:MM:dd";
    public static final int IFD_NULL = -1;
    private static final String NULL_ARGUMENT_STRING = "Argument is null";
    public static final int TAG_APERTURE_VALUE;
    public static final int TAG_ARTIST;
    public static final int TAG_BRIGHTNESS_VALUE;
    public static final int TAG_CFA_PATTERN;
    public static final int TAG_COLOR_SPACE;
    public static final int TAG_COMPONENTS_CONFIGURATION;
    public static final int TAG_COMPRESSED_BITS_PER_PIXEL;
    public static final int TAG_CONTRAST;
    public static final int TAG_COPYRIGHT;
    public static final int TAG_CUSTOM_RENDERED;
    public static final int TAG_DATE_TIME;
    public static final int TAG_DATE_TIME_DIGITIZED;
    public static final int TAG_DATE_TIME_ORIGINAL;
    public static final int TAG_DEVICE_SETTING_DESCRIPTION;
    public static final int TAG_DIGITAL_ZOOM_RATIO;
    public static final int TAG_EXIF_IFD;
    public static final int TAG_EXIF_VERSION;
    public static final int TAG_EXPOSURE_BIAS_VALUE;
    public static final int TAG_EXPOSURE_INDEX;
    public static final int TAG_EXPOSURE_MODE;
    public static final int TAG_EXPOSURE_PROGRAM;
    public static final int TAG_EXPOSURE_TIME;
    public static final int TAG_FILE_SOURCE;
    public static final int TAG_FLASH;
    public static final int TAG_FLASHPIX_VERSION;
    public static final int TAG_FLASH_ENERGY;
    public static final int TAG_FOCAL_LENGTH;
    public static final int TAG_FOCAL_LENGTH_IN_35_MM_FILE;
    public static final int TAG_FOCAL_PLANE_RESOLUTION_UNIT;
    public static final int TAG_FOCAL_PLANE_X_RESOLUTION;
    public static final int TAG_FOCAL_PLANE_Y_RESOLUTION;
    public static final int TAG_F_NUMBER;
    public static final int TAG_GAIN_CONTROL;
    public static final int TAG_GPS_ALTITUDE;
    public static final int TAG_GPS_ALTITUDE_REF;
    public static final int TAG_GPS_AREA_INFORMATION;
    public static final int TAG_GPS_DATE_STAMP;
    public static final int TAG_GPS_DEST_BEARING;
    public static final int TAG_GPS_DEST_BEARING_REF;
    public static final int TAG_GPS_DEST_DISTANCE;
    public static final int TAG_GPS_DEST_DISTANCE_REF;
    public static final int TAG_GPS_DEST_LATITUDE;
    public static final int TAG_GPS_DEST_LATITUDE_REF;
    public static final int TAG_GPS_DEST_LONGITUDE;
    public static final int TAG_GPS_DEST_LONGITUDE_REF;
    public static final int TAG_GPS_DIFFERENTIAL;
    public static final int TAG_GPS_DOP;
    public static final int TAG_GPS_IFD;
    public static final int TAG_GPS_IMG_DIRECTION;
    public static final int TAG_GPS_IMG_DIRECTION_REF;
    public static final int TAG_GPS_LATITUDE;
    public static final int TAG_GPS_LATITUDE_REF;
    public static final int TAG_GPS_LONGITUDE;
    public static final int TAG_GPS_LONGITUDE_REF;
    public static final int TAG_GPS_MAP_DATUM;
    public static final int TAG_GPS_MEASURE_MODE;
    public static final int TAG_GPS_PROCESSING_METHOD;
    public static final int TAG_GPS_SATTELLITES;
    public static final int TAG_GPS_SPEED;
    public static final int TAG_GPS_SPEED_REF;
    public static final int TAG_GPS_STATUS;
    public static final int TAG_GPS_TIME_STAMP;
    public static final int TAG_GPS_TRACK;
    public static final int TAG_GPS_TRACK_REF;
    public static final int TAG_GPS_VERSION_ID;
    public static final int TAG_IMAGE_UNIQUE_ID;
    public static final int TAG_INTEROPERABILITY_IFD;
    public static final int TAG_INTEROPERABILITY_INDEX;
    public static final int TAG_ISO_SPEED_RATINGS;
    public static final int TAG_JPEG_INTERCHANGE_FORMAT;
    public static final int TAG_JPEG_INTERCHANGE_FORMAT_LENGTH;
    public static final int TAG_LIGHT_SOURCE;
    public static final int TAG_MAKER_NOTE;
    public static final int TAG_MAX_APERTURE_VALUE;
    public static final int TAG_METERING_MODE;
    public static final int TAG_NULL = -1;
    public static final int TAG_OECF;
    public static final int TAG_OFFSET_TIME_ORIGINAL;
    public static final int TAG_ORIENTATION;
    public static final int TAG_PIXEL_X_DIMENSION;
    public static final int TAG_PIXEL_Y_DIMENSION;
    public static final int TAG_PLANAR_CONFIGURATION;
    public static final int TAG_PRIMARY_CHROMATICITIES;
    public static final int TAG_REFERENCE_BLACK_WHITE;
    public static final int TAG_RELATED_SOUND_FILE;
    public static final int TAG_RESOLUTION_UNIT;
    public static final int TAG_ROWS_PER_STRIP;
    public static final int TAG_SAMPLES_PER_PIXEL;
    public static final int TAG_SATURATION;
    public static final int TAG_SCENE_CAPTURE_TYPE;
    public static final int TAG_SCENE_TYPE;
    public static final int TAG_SENSING_METHOD;
    public static final int TAG_SHARPNESS;
    public static final int TAG_SHUTTER_SPEED_VALUE;
    public static final int TAG_SOFTWARE;
    public static final int TAG_SPATIAL_FREQUENCY_RESPONSE;
    public static final int TAG_SPECTRAL_SENSITIVITY;
    public static final int TAG_STRIP_BYTE_COUNTS;
    public static final int TAG_STRIP_OFFSETS;
    public static final int TAG_SUBJECT_AREA;
    public static final int TAG_SUBJECT_DISTANCE;
    public static final int TAG_SUBJECT_DISTANCE_RANGE;
    public static final int TAG_SUBJECT_LOCATION;
    public static final int TAG_SUB_SEC_TIME;
    public static final int TAG_SUB_SEC_TIME_DIGITIZED;
    public static final int TAG_SUB_SEC_TIME_ORIGINAL;
    public static final int TAG_TRANSFER_FUNCTION;
    public static final int TAG_USER_COMMENT;
    public static final int TAG_WHITE_BALANCE;
    public static final int TAG_WHITE_POINT;
    public static final int TAG_X_RESOLUTION;
    public static final int TAG_Y_CB_CR_COEFFICIENTS;
    public static final int TAG_Y_CB_CR_POSITIONING;
    public static final int TAG_Y_CB_CR_SUB_SAMPLING;
    public static final int TAG_Y_RESOLUTION;
    protected static final HashSet<Short> sBannedDefines;
    private static HashSet<Short> sOffsetTags;
    private OplusExifData mData = new OplusExifData(DEFAULT_BYTE_ORDER);
    private final DateFormat mDateTimeStampFormat = new SimpleDateFormat(DATETIME_FORMAT_STR);
    private final DateFormat mGPSDateStampFormat;
    private final Calendar mGPSTimeStampCalendar;
    private SparseIntArray mTagInfo;
    public static final int TAG_IMAGE_WIDTH = defineTag(0, 256);
    public static final int TAG_IMAGE_LENGTH = defineTag(0, 257);
    public static final int TAG_BITS_PER_SAMPLE = defineTag(0, 258);
    public static final int TAG_COMPRESSION = defineTag(0, 259);
    public static final int TAG_PHOTOMETRIC_INTERPRETATION = defineTag(0, 262);
    public static final int TAG_IMAGE_DESCRIPTION = defineTag(0, 270);
    public static final int TAG_MAKE = defineTag(0, 271);
    public static final int TAG_MODEL = defineTag(0, 272);

    /* loaded from: classes.dex */
    public interface ColorSpace {
        public static final short SRGB = 1;
        public static final short UNCALIBRATED = -1;
    }

    /* loaded from: classes.dex */
    public interface ComponentsConfiguration {
        public static final short B = 6;
        public static final short CB = 2;
        public static final short CR = 3;
        public static final short G = 5;
        public static final short NOT_EXIST = 0;
        public static final short R = 4;
        public static final short Y = 1;
    }

    /* loaded from: classes.dex */
    public interface Compression {
        public static final short JPEG = 6;
        public static final short UNCOMPRESSION = 1;
    }

    /* loaded from: classes.dex */
    public interface Contrast {
        public static final short HARD = 2;
        public static final short NORMAL = 0;
        public static final short SOFT = 1;
    }

    /* loaded from: classes.dex */
    public interface ExposureMode {
        public static final short AUTO_BRACKET = 2;
        public static final short AUTO_EXPOSURE = 0;
        public static final short MANUAL_EXPOSURE = 1;
    }

    /* loaded from: classes.dex */
    public interface ExposureProgram {
        public static final short ACTION_PROGRAM = 6;
        public static final short APERTURE_PRIORITY = 3;
        public static final short CREATIVE_PROGRAM = 5;
        public static final short LANDSCAPE_MODE = 8;
        public static final short MANUAL = 1;
        public static final short NORMAL_PROGRAM = 2;
        public static final short NOT_DEFINED = 0;
        public static final short PROTRAIT_MODE = 7;
        public static final short SHUTTER_PRIORITY = 4;
    }

    /* loaded from: classes.dex */
    public interface FileSource {
        public static final short DSC = 3;
    }

    /* loaded from: classes.dex */
    public interface Flash {
        public static final short DID_NOT_FIRED = 0;
        public static final short FIRED = 1;
        public static final short FUNCTION_NO_FUNCTION = 32;
        public static final short FUNCTION_PRESENT = 0;
        public static final short MODE_AUTO_MODE = 24;
        public static final short MODE_COMPULSORY_FLASH_FIRING = 8;
        public static final short MODE_COMPULSORY_FLASH_SUPPRESSION = 16;
        public static final short MODE_UNKNOWN = 0;
        public static final short RED_EYE_REDUCTION_NO_OR_UNKNOWN = 0;
        public static final short RED_EYE_REDUCTION_SUPPORT = 64;
        public static final short RETURN_NO_STROBE_RETURN_DETECTION_FUNCTION = 0;
        public static final short RETURN_STROBE_RETURN_LIGHT_DETECTED = 6;
        public static final short RETURN_STROBE_RETURN_LIGHT_NOT_DETECTED = 4;
    }

    /* loaded from: classes.dex */
    public interface GainControl {
        public static final short HIGH_DOWN = 4;
        public static final short HIGH_UP = 2;
        public static final short LOW_DOWN = 3;
        public static final short LOW_UP = 1;
        public static final short NONE = 0;
    }

    /* loaded from: classes.dex */
    public interface GpsAltitudeRef {
        public static final short SEA_LEVEL = 0;
        public static final short SEA_LEVEL_NEGATIVE = 1;
    }

    /* loaded from: classes.dex */
    public interface GpsDifferential {
        public static final short DIFFERENTIAL_CORRECTION_APPLIED = 1;
        public static final short WITHOUT_DIFFERENTIAL_CORRECTION = 0;
    }

    /* loaded from: classes.dex */
    public interface GpsLatitudeRef {
        public static final String NORTH = "N";
        public static final String SOUTH = "S";
    }

    /* loaded from: classes.dex */
    public interface GpsLongitudeRef {
        public static final String EAST = "E";
        public static final String WEST = "W";
    }

    /* loaded from: classes.dex */
    public interface GpsMeasureMode {
        public static final String MODE_2_DIMENSIONAL = "2";
        public static final String MODE_3_DIMENSIONAL = "3";
    }

    /* loaded from: classes.dex */
    public interface GpsSpeedRef {
        public static final String KILOMETERS = "K";
        public static final String KNOTS = "N";
        public static final String MILES = "M";
    }

    /* loaded from: classes.dex */
    public interface GpsStatus {
        public static final String INTEROPERABILITY = "V";
        public static final String IN_PROGRESS = "A";
    }

    /* loaded from: classes.dex */
    public interface GpsTrackRef {
        public static final String MAGNETIC_DIRECTION = "M";
        public static final String TRUE_DIRECTION = "T";
    }

    /* loaded from: classes.dex */
    public interface LightSource {
        public static final short CLOUDY_WEATHER = 10;
        public static final short COOL_WHITE_FLUORESCENT = 14;
        public static final short D50 = 23;
        public static final short D55 = 20;
        public static final short D65 = 21;
        public static final short D75 = 22;
        public static final short DAYLIGHT = 1;
        public static final short DAYLIGHT_FLUORESCENT = 12;
        public static final short DAY_WHITE_FLUORESCENT = 13;
        public static final short FINE_WEATHER = 9;
        public static final short FLASH = 4;
        public static final short FLUORESCENT = 2;
        public static final short ISO_STUDIO_TUNGSTEN = 24;
        public static final short OTHER = 255;
        public static final short SHADE = 11;
        public static final short STANDARD_LIGHT_A = 17;
        public static final short STANDARD_LIGHT_B = 18;
        public static final short STANDARD_LIGHT_C = 19;
        public static final short TUNGSTEN = 3;
        public static final short UNKNOWN = 0;
        public static final short WHITE_FLUORESCENT = 15;
    }

    /* loaded from: classes.dex */
    public interface MeteringMode {
        public static final short AVERAGE = 1;
        public static final short CENTER_WEIGHTED_AVERAGE = 2;
        public static final short MULTISPOT = 4;
        public static final short OTHER = 255;
        public static final short PARTAIL = 6;
        public static final short PATTERN = 5;
        public static final short SPOT = 3;
        public static final short UNKNOWN = 0;
    }

    /* loaded from: classes.dex */
    public interface Orientation {
        public static final short BOTTOM_LEFT = 3;
        public static final short BOTTOM_RIGHT = 4;
        public static final short LEFT_BOTTOM = 7;
        public static final short LEFT_TOP = 5;
        public static final short RIGHT_BOTTOM = 8;
        public static final short RIGHT_TOP = 6;
        public static final short TOP_LEFT = 1;
        public static final short TOP_RIGHT = 2;
    }

    /* loaded from: classes.dex */
    public interface PhotometricInterpretation {
        public static final short RGB = 2;
        public static final short YCBCR = 6;
    }

    /* loaded from: classes.dex */
    public interface PlanarConfiguration {
        public static final short CHUNKY = 1;
        public static final short PLANAR = 2;
    }

    /* loaded from: classes.dex */
    public interface ResolutionUnit {
        public static final short CENTIMETERS = 3;
        public static final short INCHES = 2;
    }

    /* loaded from: classes.dex */
    public interface Saturation {
        public static final short HIGH = 2;
        public static final short LOW = 1;
        public static final short NORMAL = 0;
    }

    /* loaded from: classes.dex */
    public interface SceneCapture {
        public static final short LANDSCAPE = 1;
        public static final short NIGHT_SCENE = 3;
        public static final short PROTRAIT = 2;
        public static final short STANDARD = 0;
    }

    /* loaded from: classes.dex */
    public interface SceneType {
        public static final short DIRECT_PHOTOGRAPHED = 1;
    }

    /* loaded from: classes.dex */
    public interface SensingMethod {
        public static final short COLOR_SEQUENTIAL_AREA = 5;
        public static final short COLOR_SEQUENTIAL_LINEAR = 8;
        public static final short NOT_DEFINED = 1;
        public static final short ONE_CHIP_COLOR = 2;
        public static final short THREE_CHIP_COLOR = 4;
        public static final short TRILINEAR = 7;
        public static final short TWO_CHIP_COLOR = 3;
    }

    /* loaded from: classes.dex */
    public interface Sharpness {
        public static final short HARD = 2;
        public static final short NORMAL = 0;
        public static final short SOFT = 1;
    }

    /* loaded from: classes.dex */
    public interface SubjectDistance {
        public static final short CLOSE_VIEW = 2;
        public static final short DISTANT_VIEW = 3;
        public static final short MACRO = 1;
        public static final short UNKNOWN = 0;
    }

    /* loaded from: classes.dex */
    public interface WhiteBalance {
        public static final short AUTO = 0;
        public static final short MANUAL = 1;
    }

    /* loaded from: classes.dex */
    public interface YCbCrPositioning {
        public static final short CENTERED = 1;
        public static final short CO_SITED = 2;
    }

    public static int defineTag(int i, short s) {
        return (i << 16) | (s & ColorSpace.UNCALIBRATED);
    }

    protected static int getAllowedIfdFlagsFromInfo(int i) {
        return i >>> 24;
    }

    protected static int getComponentCountFromInfo(int i) {
        return i & 65535;
    }

    public static int getRotationForOrientationValue(short s) {
        if (s != 3) {
            if (s != 6) {
                return s != 8 ? 0 : 270;
            }
            return 90;
        }
        return 180;
    }

    public static int getTrueIfd(int i) {
        return i >>> 16;
    }

    public static short getTrueTagKey(int i) {
        return (short) i;
    }

    protected static short getTypeFromInfo(int i) {
        return (short) ((i >> 16) & 255);
    }

    static {
        int defineTag = defineTag(0, (short) 273);
        TAG_STRIP_OFFSETS = defineTag;
        TAG_ORIENTATION = defineTag(0, (short) 274);
        TAG_SAMPLES_PER_PIXEL = defineTag(0, (short) 277);
        TAG_ROWS_PER_STRIP = defineTag(0, (short) 278);
        int defineTag2 = defineTag(0, (short) 279);
        TAG_STRIP_BYTE_COUNTS = defineTag2;
        TAG_X_RESOLUTION = defineTag(0, (short) 282);
        TAG_Y_RESOLUTION = defineTag(0, (short) 283);
        TAG_PLANAR_CONFIGURATION = defineTag(0, (short) 284);
        TAG_RESOLUTION_UNIT = defineTag(0, (short) 296);
        TAG_TRANSFER_FUNCTION = defineTag(0, (short) 301);
        TAG_SOFTWARE = defineTag(0, (short) 305);
        TAG_DATE_TIME = defineTag(0, (short) 306);
        TAG_ARTIST = defineTag(0, (short) 315);
        TAG_WHITE_POINT = defineTag(0, (short) 318);
        TAG_PRIMARY_CHROMATICITIES = defineTag(0, (short) 319);
        TAG_Y_CB_CR_COEFFICIENTS = defineTag(0, (short) 529);
        TAG_Y_CB_CR_SUB_SAMPLING = defineTag(0, (short) 530);
        TAG_Y_CB_CR_POSITIONING = defineTag(0, (short) 531);
        TAG_REFERENCE_BLACK_WHITE = defineTag(0, (short) 532);
        TAG_COPYRIGHT = defineTag(0, (short) -32104);
        int defineTag3 = defineTag(0, (short) -30871);
        TAG_EXIF_IFD = defineTag3;
        int defineTag4 = defineTag(0, (short) -30683);
        TAG_GPS_IFD = defineTag4;
        int defineTag5 = defineTag(1, (short) 513);
        TAG_JPEG_INTERCHANGE_FORMAT = defineTag5;
        int defineTag6 = defineTag(1, (short) 514);
        TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = defineTag6;
        TAG_EXPOSURE_TIME = defineTag(2, (short) -32102);
        TAG_F_NUMBER = defineTag(2, (short) -32099);
        TAG_EXPOSURE_PROGRAM = defineTag(2, (short) -30686);
        TAG_SPECTRAL_SENSITIVITY = defineTag(2, (short) -30684);
        TAG_ISO_SPEED_RATINGS = defineTag(2, (short) -30681);
        TAG_OECF = defineTag(2, (short) -30680);
        TAG_EXIF_VERSION = defineTag(2, (short) -28672);
        TAG_DATE_TIME_ORIGINAL = defineTag(2, (short) -28669);
        TAG_DATE_TIME_DIGITIZED = defineTag(2, (short) -28668);
        TAG_OFFSET_TIME_ORIGINAL = defineTag(2, (short) -28655);
        TAG_COMPONENTS_CONFIGURATION = defineTag(2, (short) -28415);
        TAG_COMPRESSED_BITS_PER_PIXEL = defineTag(2, (short) -28414);
        TAG_SHUTTER_SPEED_VALUE = defineTag(2, (short) -28159);
        TAG_APERTURE_VALUE = defineTag(2, (short) -28158);
        TAG_BRIGHTNESS_VALUE = defineTag(2, (short) -28157);
        TAG_EXPOSURE_BIAS_VALUE = defineTag(2, (short) -28156);
        TAG_MAX_APERTURE_VALUE = defineTag(2, (short) -28155);
        TAG_SUBJECT_DISTANCE = defineTag(2, (short) -28154);
        TAG_METERING_MODE = defineTag(2, (short) -28153);
        TAG_LIGHT_SOURCE = defineTag(2, (short) -28152);
        TAG_FLASH = defineTag(2, (short) -28151);
        TAG_FOCAL_LENGTH = defineTag(2, (short) -28150);
        TAG_SUBJECT_AREA = defineTag(2, (short) -28140);
        TAG_MAKER_NOTE = defineTag(2, (short) -28036);
        TAG_USER_COMMENT = defineTag(2, (short) -28026);
        TAG_SUB_SEC_TIME = defineTag(2, (short) -28016);
        TAG_SUB_SEC_TIME_ORIGINAL = defineTag(2, (short) -28015);
        TAG_SUB_SEC_TIME_DIGITIZED = defineTag(2, (short) -28014);
        TAG_FLASHPIX_VERSION = defineTag(2, (short) -24576);
        TAG_COLOR_SPACE = defineTag(2, (short) -24575);
        TAG_PIXEL_X_DIMENSION = defineTag(2, (short) -24574);
        TAG_PIXEL_Y_DIMENSION = defineTag(2, (short) -24573);
        TAG_RELATED_SOUND_FILE = defineTag(2, (short) -24572);
        int defineTag7 = defineTag(2, (short) -24571);
        TAG_INTEROPERABILITY_IFD = defineTag7;
        TAG_FLASH_ENERGY = defineTag(2, (short) -24053);
        TAG_SPATIAL_FREQUENCY_RESPONSE = defineTag(2, (short) -24052);
        TAG_FOCAL_PLANE_X_RESOLUTION = defineTag(2, (short) -24050);
        TAG_FOCAL_PLANE_Y_RESOLUTION = defineTag(2, (short) -24049);
        TAG_FOCAL_PLANE_RESOLUTION_UNIT = defineTag(2, (short) -24048);
        TAG_SUBJECT_LOCATION = defineTag(2, (short) -24044);
        TAG_EXPOSURE_INDEX = defineTag(2, (short) -24043);
        TAG_SENSING_METHOD = defineTag(2, (short) -24041);
        TAG_FILE_SOURCE = defineTag(2, (short) -23808);
        TAG_SCENE_TYPE = defineTag(2, (short) -23807);
        TAG_CFA_PATTERN = defineTag(2, (short) -23806);
        TAG_CUSTOM_RENDERED = defineTag(2, (short) -23551);
        TAG_EXPOSURE_MODE = defineTag(2, (short) -23550);
        TAG_WHITE_BALANCE = defineTag(2, (short) -23549);
        TAG_DIGITAL_ZOOM_RATIO = defineTag(2, (short) -23548);
        TAG_FOCAL_LENGTH_IN_35_MM_FILE = defineTag(2, (short) -23547);
        TAG_SCENE_CAPTURE_TYPE = defineTag(2, (short) -23546);
        TAG_GAIN_CONTROL = defineTag(2, (short) -23545);
        TAG_CONTRAST = defineTag(2, (short) -23544);
        TAG_SATURATION = defineTag(2, (short) -23543);
        TAG_SHARPNESS = defineTag(2, (short) -23542);
        TAG_DEVICE_SETTING_DESCRIPTION = defineTag(2, (short) -23541);
        TAG_SUBJECT_DISTANCE_RANGE = defineTag(2, (short) -23540);
        TAG_IMAGE_UNIQUE_ID = defineTag(2, (short) -23520);
        TAG_GPS_VERSION_ID = defineTag(4, (short) 0);
        TAG_GPS_LATITUDE_REF = defineTag(4, (short) 1);
        TAG_GPS_LATITUDE = defineTag(4, (short) 2);
        TAG_GPS_LONGITUDE_REF = defineTag(4, (short) 3);
        TAG_GPS_LONGITUDE = defineTag(4, (short) 4);
        TAG_GPS_ALTITUDE_REF = defineTag(4, (short) 5);
        TAG_GPS_ALTITUDE = defineTag(4, (short) 6);
        TAG_GPS_TIME_STAMP = defineTag(4, (short) 7);
        TAG_GPS_SATTELLITES = defineTag(4, (short) 8);
        TAG_GPS_STATUS = defineTag(4, (short) 9);
        TAG_GPS_MEASURE_MODE = defineTag(4, (short) 10);
        TAG_GPS_DOP = defineTag(4, (short) 11);
        TAG_GPS_SPEED_REF = defineTag(4, (short) 12);
        TAG_GPS_SPEED = defineTag(4, (short) 13);
        TAG_GPS_TRACK_REF = defineTag(4, (short) 14);
        TAG_GPS_TRACK = defineTag(4, (short) 15);
        TAG_GPS_IMG_DIRECTION_REF = defineTag(4, (short) 16);
        TAG_GPS_IMG_DIRECTION = defineTag(4, (short) 17);
        TAG_GPS_MAP_DATUM = defineTag(4, (short) 18);
        TAG_GPS_DEST_LATITUDE_REF = defineTag(4, (short) 19);
        TAG_GPS_DEST_LATITUDE = defineTag(4, (short) 20);
        TAG_GPS_DEST_LONGITUDE_REF = defineTag(4, (short) 21);
        TAG_GPS_DEST_LONGITUDE = defineTag(4, (short) 22);
        TAG_GPS_DEST_BEARING_REF = defineTag(4, (short) 23);
        TAG_GPS_DEST_BEARING = defineTag(4, (short) 24);
        TAG_GPS_DEST_DISTANCE_REF = defineTag(4, (short) 25);
        TAG_GPS_DEST_DISTANCE = defineTag(4, (short) 26);
        TAG_GPS_PROCESSING_METHOD = defineTag(4, (short) 27);
        TAG_GPS_AREA_INFORMATION = defineTag(4, (short) 28);
        TAG_GPS_DATE_STAMP = defineTag(4, (short) 29);
        TAG_GPS_DIFFERENTIAL = defineTag(4, (short) 30);
        TAG_INTEROPERABILITY_INDEX = defineTag(3, (short) 1);
        HashSet<Short> hashSet = new HashSet<>();
        sOffsetTags = hashSet;
        hashSet.add(Short.valueOf(getTrueTagKey(defineTag4)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(defineTag3)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(defineTag5)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(defineTag7)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(defineTag)));
        HashSet<Short> hashSet2 = new HashSet<>(sOffsetTags);
        sBannedDefines = hashSet2;
        hashSet2.add(Short.valueOf(getTrueTagKey(-1)));
        hashSet2.add(Short.valueOf(getTrueTagKey(defineTag6)));
        hashSet2.add(Short.valueOf(getTrueTagKey(defineTag2)));
        DEFAULT_BYTE_ORDER = ByteOrder.BIG_ENDIAN;
    }

    public OplusExifInterface() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(GPS_DATE_FORMAT_STR);
        this.mGPSDateStampFormat = simpleDateFormat;
        this.mGPSTimeStampCalendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        this.mTagInfo = null;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public void readExif(byte[] bArr) throws IOException {
        readExif(new ByteArrayInputStream(bArr));
    }

    public void readExif(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OplusExifData oplusExifData = null;
        try {
            oplusExifData = new OplusExifReader(this).read(inputStream);
        } catch (OplusExifInvalidFormatException e) {
            throw new IOException("Invalid exif format : " + e);
        } catch (Throwable th) {
            Log.e("OplusExifInterface", "e = " + th);
        }
        this.mData = oplusExifData;
    }

    public void readExif(String str) throws FileNotFoundException, IOException {
        BufferedInputStream bufferedInputStream;
        if (str == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        BufferedInputStream bufferedInputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        } catch (IOException e) {
            e = e;
        }
        try {
            readExif(bufferedInputStream);
            bufferedInputStream.close();
        } catch (IOException e2) {
            e = e2;
            bufferedInputStream2 = bufferedInputStream;
            closeSilently(bufferedInputStream2);
            throw e;
        }
    }

    public void setExif(Collection<OplusExifTag> collection) {
        clearExif();
        setTags(collection);
    }

    public void clearExif() {
        this.mData = new OplusExifData(DEFAULT_BYTE_ORDER);
    }

    public void writeExif(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr == null || outputStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream exifWriterStream = getExifWriterStream(outputStream);
        exifWriterStream.write(bArr, 0, bArr.length);
        exifWriterStream.flush();
    }

    public void writeExif(Bitmap bitmap, OutputStream outputStream) throws IOException {
        if (bitmap == null || outputStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream exifWriterStream = getExifWriterStream(outputStream);
        bitmap.compress(Bitmap.CompressFormat.JPEG, 90, exifWriterStream);
        exifWriterStream.flush();
    }

    public void writeExif(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream exifWriterStream = getExifWriterStream(outputStream);
        doExifStreamIO(inputStream, exifWriterStream);
        exifWriterStream.flush();
    }

    public void writeExif(byte[] bArr, String str) throws FileNotFoundException, IOException {
        if (bArr == null || str == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream outputStream = null;
        try {
            outputStream = getExifWriterStream(str);
            outputStream.write(bArr, 0, bArr.length);
            outputStream.flush();
            outputStream.close();
        } catch (IOException e) {
            closeSilently(outputStream);
            throw e;
        }
    }

    public void writeExif(Bitmap bitmap, String str) throws FileNotFoundException, IOException {
        if (bitmap == null || str == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream outputStream = null;
        try {
            outputStream = getExifWriterStream(str);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 90, outputStream);
            outputStream.flush();
            outputStream.close();
        } catch (IOException e) {
            closeSilently(outputStream);
            throw e;
        }
    }

    public void writeExif(InputStream inputStream, String str) throws FileNotFoundException, IOException {
        if (inputStream == null || str == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream outputStream = null;
        try {
            outputStream = getExifWriterStream(str);
            doExifStreamIO(inputStream, outputStream);
            outputStream.flush();
            outputStream.close();
        } catch (IOException e) {
            closeSilently(outputStream);
            throw e;
        }
    }

    public void writeExif(String str, String str2) throws FileNotFoundException, IOException {
        FileInputStream fileInputStream;
        if (str == null || str2 == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (IOException e) {
            e = e;
        }
        try {
            writeExif(fileInputStream, str2);
            fileInputStream.close();
        } catch (IOException e2) {
            e = e2;
            fileInputStream2 = fileInputStream;
            closeSilently(fileInputStream2);
            throw e;
        }
    }

    public OutputStream getExifWriterStream(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OplusExifOutputStream oplusExifOutputStream = new OplusExifOutputStream(outputStream, this);
        oplusExifOutputStream.setExifData(this.mData);
        return oplusExifOutputStream;
    }

    public OutputStream getExifWriterStream(String str) throws FileNotFoundException {
        if (str == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        try {
            return getExifWriterStream(new FileOutputStream(str));
        } catch (FileNotFoundException e) {
            closeSilently(null);
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v3 */
    public boolean rewriteExif(String str, Collection<OplusExifTag> collection)
            throws FileNotFoundException, IOException {
        RandomAccessFile randomAccessFile = null;
        BufferedInputStream bufferedInputStream = null;
        try {
            File file = new File(str);
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            long offsetToExifEndFromSOF = OplusExifParser.parse(bufferedInputStream, this).getOffsetToExifEndFromSOF();
            bufferedInputStream.close();
            bufferedInputStream = null;

            randomAccessFile = new RandomAccessFile(file, "rw");
            if (randomAccessFile.length() < offsetToExifEndFromSOF) {
                throw new IOException("Filesize changed during operation");
            }
            return rewriteExif(
                    randomAccessFile.getChannel().map(FileChannel.MapMode.READ_WRITE, 0L, offsetToExifEndFromSOF),
                    collection);
        } catch (OplusExifInvalidFormatException e) {
            throw new IOException("Invalid exif format : ", e);
        } finally {
            closeSilently(bufferedInputStream);
            closeSilently(randomAccessFile);
        }
    }

    public boolean rewriteExif(ByteBuffer byteBuffer, Collection<OplusExifTag> collection) throws IOException {
        try {
            OplusExifModifier oplusExifModifier = new OplusExifModifier(byteBuffer, this);
            for (OplusExifTag oplusExifTag : collection) {
                oplusExifModifier.modifyTag(oplusExifTag);
            }
            return oplusExifModifier.commit();
        } catch (OplusExifInvalidFormatException e) {
            throw new IOException("Invalid exif format : " + e);
        }
    }

    public void forceRewriteExif(String str, Collection<OplusExifTag> collection)
            throws FileNotFoundException, IOException {
        InputStream fileInputStream;
        if (collection == null || rewriteExif(str, collection)) {
            return;
        }
        OplusExifData oplusExifData = this.mData;
        this.mData = new OplusExifData(DEFAULT_BYTE_ORDER);
        InputStream inputStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            doExifStreamIO(fileInputStream, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            readExif(byteArray);
            setTags(collection);
            writeExif(byteArray, str);
            closeSilently(fileInputStream);
            this.mData = oplusExifData;
        } catch (IOException e2) {
            e = e2;
            inputStream = fileInputStream;
            closeSilently(inputStream);
            throw e;
        } catch (Throwable th2) {
            th = th2;
            inputStream = fileInputStream;
            closeSilently(inputStream);
            this.mData = oplusExifData;
            throw th;
        }
    }

    public void forceRewriteExif(String str) throws FileNotFoundException, IOException {
        forceRewriteExif(str, getAllTags());
    }

    public List<OplusExifTag> getAllTags() {
        return this.mData.getAllTags();
    }

    public List<OplusExifTag> getTagsForTagId(short s) {
        return this.mData.getAllTagsForTagId(s);
    }

    public List<OplusExifTag> getTagsForIfdId(int i) {
        return this.mData.getAllTagsForIfd(i);
    }

    public OplusExifTag getTag(int i, int i2) {
        if (OplusExifTag.isValidIfd(i2)) {
            return this.mData.getTag(getTrueTagKey(i), i2);
        }
        return null;
    }

    public OplusExifTag getTag(int i) {
        return getTag(i, getDefinedTagDefaultIfd(i));
    }

    public Object getTagValue(int i, int i2) {
        OplusExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValue();
    }

    public Object getTagValue(int i) {
        return getTagValue(i, getDefinedTagDefaultIfd(i));
    }

    public String getTagStringValue(int i, int i2) {
        OplusExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsString();
    }

    public String getTagStringValue(int i) {
        return getTagStringValue(i, getDefinedTagDefaultIfd(i));
    }

    public Long getTagLongValue(int i, int i2) {
        long[] tagLongValues = getTagLongValues(i, i2);
        if (tagLongValues == null || tagLongValues.length <= 0) {
            return null;
        }
        return new Long(tagLongValues[0]);
    }

    public Long getTagLongValue(int i) {
        return getTagLongValue(i, getDefinedTagDefaultIfd(i));
    }

    public Integer getTagIntValue(int i, int i2) {
        int[] tagIntValues = getTagIntValues(i, i2);
        if (tagIntValues == null || tagIntValues.length <= 0) {
            return null;
        }
        return new Integer(tagIntValues[0]);
    }

    public Integer getTagIntValue(int i) {
        return getTagIntValue(i, getDefinedTagDefaultIfd(i));
    }

    public Byte getTagByteValue(int i, int i2) {
        byte[] tagByteValues = getTagByteValues(i, i2);
        if (tagByteValues == null || tagByteValues.length <= 0) {
            return null;
        }
        return new Byte(tagByteValues[0]);
    }

    public Byte getTagByteValue(int i) {
        return getTagByteValue(i, getDefinedTagDefaultIfd(i));
    }

    public OplusRational getTagRationalValue(int i, int i2) {
        OplusRational[] tagRationalValues = getTagRationalValues(i, i2);
        if (tagRationalValues == null || tagRationalValues.length == 0) {
            return null;
        }
        return new OplusRational(tagRationalValues[0]);
    }

    public OplusRational getTagRationalValue(int i) {
        return getTagRationalValue(i, getDefinedTagDefaultIfd(i));
    }

    public long[] getTagLongValues(int i, int i2) {
        OplusExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsLongs();
    }

    public long[] getTagLongValues(int i) {
        return getTagLongValues(i, getDefinedTagDefaultIfd(i));
    }

    public int[] getTagIntValues(int i, int i2) {
        OplusExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsInts();
    }

    public int[] getTagIntValues(int i) {
        return getTagIntValues(i, getDefinedTagDefaultIfd(i));
    }

    public byte[] getTagByteValues(int i, int i2) {
        OplusExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsBytes();
    }

    public byte[] getTagByteValues(int i) {
        return getTagByteValues(i, getDefinedTagDefaultIfd(i));
    }

    public OplusRational[] getTagRationalValues(int i, int i2) {
        OplusExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsRationals();
    }

    public OplusRational[] getTagRationalValues(int i) {
        return getTagRationalValues(i, getDefinedTagDefaultIfd(i));
    }

    public boolean isTagCountDefined(int i) {
        int i2 = getTagInfo().get(i);
        return (i2 == 0 || getComponentCountFromInfo(i2) == 0) ? false : true;
    }

    public int getDefinedTagCount(int i) {
        int i2 = getTagInfo().get(i);
        if (i2 == 0) {
            return 0;
        }
        return getComponentCountFromInfo(i2);
    }

    public int getActualTagCount(int i, int i2) {
        OplusExifTag tag = getTag(i, i2);
        if (tag == null) {
            return 0;
        }
        return tag.getComponentCount();
    }

    public int getDefinedTagDefaultIfd(int i) {
        if (getTagInfo().get(i) == 0) {
            return -1;
        }
        return getTrueIfd(i);
    }

    public short getDefinedTagType(int i) {
        int i2 = getTagInfo().get(i);
        if (i2 == 0) {
            return (short) -1;
        }
        return getTypeFromInfo(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isOffsetTag(short s) {
        return sOffsetTags.contains(Short.valueOf(s));
    }

    public OplusExifTag buildTag(int i, int i2, Object obj) {
        int i3 = getTagInfo().get(i);
        if (i3 == 0 || obj == null) {
            return null;
        }
        short typeFromInfo = getTypeFromInfo(i3);
        int componentCountFromInfo = getComponentCountFromInfo(i3);
        boolean z = componentCountFromInfo != 0;
        if (isIfdAllowed(i3, i2)) {
            OplusExifTag oplusExifTag = new OplusExifTag(getTrueTagKey(i), typeFromInfo, componentCountFromInfo, i2, z);
            if (oplusExifTag.setValue(obj)) {
                return oplusExifTag;
            }
            return null;
        }
        return null;
    }

    public OplusExifTag buildTag(int i, Object obj) {
        return buildTag(i, getTrueIfd(i), obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifTag buildUninitializedTag(int i) {
        int i2 = getTagInfo().get(i);
        if (i2 == 0) {
            return null;
        }
        short typeFromInfo = getTypeFromInfo(i2);
        int componentCountFromInfo = getComponentCountFromInfo(i2);
        boolean z = componentCountFromInfo != 0;
        return new OplusExifTag(getTrueTagKey(i), typeFromInfo, componentCountFromInfo, getTrueIfd(i), z);
    }

    public boolean setTagValue(int i, int i2, Object obj) {
        OplusExifTag tag = getTag(i, i2);
        if (tag == null) {
            return false;
        }
        return tag.setValue(obj);
    }

    public boolean setTagValue(int i, Object obj) {
        return setTagValue(i, getDefinedTagDefaultIfd(i), obj);
    }

    public OplusExifTag setTag(OplusExifTag oplusExifTag) {
        return this.mData.addTag(oplusExifTag);
    }

    public void setTags(Collection<OplusExifTag> collection) {
        for (OplusExifTag oplusExifTag : collection) {
            setTag(oplusExifTag);
        }
    }

    public void deleteTag(int i, int i2) {
        this.mData.removeTag(getTrueTagKey(i), i2);
    }

    public void deleteTag(int i) {
        deleteTag(i, getDefinedTagDefaultIfd(i));
    }

    public int setTagDefinition(short s, int i, short s2, short s3, int[] iArr) {
        int defineTag;
        if (!sBannedDefines.contains(Short.valueOf(s)) && OplusExifTag.isValidType(s2) && OplusExifTag.isValidIfd(i)
                && (defineTag = defineTag(i, s)) != -1) {
            int[] tagDefinitionsForTagId = getTagDefinitionsForTagId(s);
            SparseIntArray tagInfo = getTagInfo();
            boolean z = false;
            for (int i2 : iArr) {
                if (i == i2) {
                    z = true;
                }
                if (!OplusExifTag.isValidIfd(i2)) {
                    return -1;
                }
            }
            if (z) {
                int flagsFromAllowedIfds = getFlagsFromAllowedIfds(iArr);
                if (tagDefinitionsForTagId != null) {
                    for (int i3 : tagDefinitionsForTagId) {
                        if ((getAllowedIfdFlagsFromInfo(tagInfo.get(i3)) & flagsFromAllowedIfds) != 0) {
                            return -1;
                        }
                    }
                }
                getTagInfo().put(defineTag, (flagsFromAllowedIfds << 24) | (s2 << 16) | s3);
                return defineTag;
            }
            return -1;
        }
        return -1;
    }

    protected int getTagDefinition(short s, int i) {
        return getTagInfo().get(defineTag(i, s));
    }

    protected int[] getTagDefinitionsForTagId(short s) {
        int[] ifds = OplusIfdData.getIfds();
        int[] iArr = new int[ifds.length];
        SparseIntArray tagInfo = getTagInfo();
        int i = 0;
        for (int i2 : ifds) {
            int defineTag = defineTag(i2, s);
            if (tagInfo.get(defineTag) != 0) {
                iArr[i] = defineTag;
                i++;
            }
        }
        if (i == 0) {
            return null;
        }
        return Arrays.copyOfRange(iArr, 0, i);
    }

    protected int getTagDefinitionForTag(OplusExifTag oplusExifTag) {
        return getTagDefinitionForTag(oplusExifTag.getTagId(), oplusExifTag.getDataType(),
                oplusExifTag.getComponentCount(), oplusExifTag.getIfd());
    }

    protected int getTagDefinitionForTag(short s, short s2, int i, int i2) {
        boolean z;
        int[] tagDefinitionsForTagId = getTagDefinitionsForTagId(s);
        if (tagDefinitionsForTagId == null) {
            return -1;
        }
        SparseIntArray tagInfo = getTagInfo();
        for (int i3 : tagDefinitionsForTagId) {
            int i4 = tagInfo.get(i3);
            short typeFromInfo = getTypeFromInfo(i4);
            int componentCountFromInfo = getComponentCountFromInfo(i4);
            int[] allowedIfdsFromInfo = getAllowedIfdsFromInfo(i4);
            int length = allowedIfdsFromInfo.length;
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    z = false;
                    break;
                } else if (allowedIfdsFromInfo[i5] == i2) {
                    z = true;
                    break;
                } else {
                    i5++;
                }
            }
            if (z && s2 == typeFromInfo && (i == componentCountFromInfo || componentCountFromInfo == 0)) {
                return i3;
            }
        }
        return -1;
    }

    public void removeTagDefinition(int i) {
        getTagInfo().delete(i);
    }

    public void resetTagDefinitions() {
        this.mTagInfo = null;
    }

    public Bitmap getThumbnailBitmap() {
        if (this.mData.hasCompressedThumbnail()) {
            byte[] compressedThumbnail = this.mData.getCompressedThumbnail();
            return BitmapFactory.decodeByteArray(compressedThumbnail, 0, compressedThumbnail.length);
        }
        this.mData.hasUncompressedStrip();
        return null;
    }

    public byte[] getThumbnailBytes() {
        if (this.mData.hasCompressedThumbnail()) {
            return this.mData.getCompressedThumbnail();
        }
        this.mData.hasUncompressedStrip();
        return null;
    }

    public byte[] getThumbnail() {
        return this.mData.getCompressedThumbnail();
    }

    public boolean isThumbnailCompressed() {
        return this.mData.hasCompressedThumbnail();
    }

    public boolean hasThumbnail() {
        return this.mData.hasCompressedThumbnail();
    }

    public boolean setCompressedThumbnail(byte[] bArr) {
        this.mData.clearThumbnailAndStrips();
        this.mData.setCompressedThumbnail(bArr);
        return true;
    }

    public boolean setCompressedThumbnail(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap.compress(Bitmap.CompressFormat.JPEG, 90, byteArrayOutputStream)) {
            return setCompressedThumbnail(byteArrayOutputStream.toByteArray());
        }
        return false;
    }

    public void removeCompressedThumbnail() {
        this.mData.setCompressedThumbnail(null);
    }

    public String getUserComment() {
        return this.mData.getUserComment();
    }

    public static short getOrientationValueForRotation(int i) {
        int i2 = i % 360;
        if (i2 < 0) {
            i2 += 360;
        }
        if (i2 < 90) {
            return (short) 1;
        }
        if (i2 < 180) {
            return (short) 6;
        }
        return i2 < 270 ? (short) 3 : (short) 8;
    }

    public static double convertLatOrLongToDouble(OplusRational[] oplusRationalArr, String str) {
        try {
            double d = oplusRationalArr[0].toDouble() + (oplusRationalArr[1].toDouble() / 60.0d)
                    + (oplusRationalArr[2].toDouble() / 3600.0d);
            if (!str.equals(GpsLatitudeRef.SOUTH)) {
                if (!str.equals(GpsLongitudeRef.WEST)) {
                    return d;
                }
            }
            return -d;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException();
        }
    }

    public double[] getLatLongAsDoubles() {
        OplusRational[] tagRationalValues = getTagRationalValues(TAG_GPS_LATITUDE);
        String tagStringValue = getTagStringValue(TAG_GPS_LATITUDE_REF);
        OplusRational[] tagRationalValues2 = getTagRationalValues(TAG_GPS_LONGITUDE);
        String tagStringValue2 = getTagStringValue(TAG_GPS_LONGITUDE_REF);
        if (tagRationalValues == null || tagRationalValues2 == null || tagStringValue == null || tagStringValue2 == null
                || tagRationalValues.length < 3 || tagRationalValues2.length < 3) {
            return null;
        }
        return new double[] { convertLatOrLongToDouble(tagRationalValues, tagStringValue),
                convertLatOrLongToDouble(tagRationalValues2, tagStringValue2) };
    }

    public boolean addDateTimeStampTag(int i, long j, TimeZone timeZone) {
        if (i == TAG_DATE_TIME || i == TAG_DATE_TIME_DIGITIZED || i == TAG_DATE_TIME_ORIGINAL) {
            this.mDateTimeStampFormat.setTimeZone(timeZone);
            OplusExifTag buildTag = buildTag(i, this.mDateTimeStampFormat.format(Long.valueOf(j)));
            if (buildTag == null) {
                return false;
            }
            setTag(buildTag);
            return true;
        }
        return false;
    }

    public boolean addGpsTags(double d, double d2) {
        OplusExifTag buildTag = buildTag(TAG_GPS_LATITUDE, toExifLatLong(d));
        OplusExifTag buildTag2 = buildTag(TAG_GPS_LONGITUDE, toExifLatLong(d2));
        OplusExifTag buildTag3 = buildTag(TAG_GPS_LATITUDE_REF, d >= 0.0d ? "N" : GpsLatitudeRef.SOUTH);
        OplusExifTag buildTag4 = buildTag(TAG_GPS_LONGITUDE_REF,
                d2 >= 0.0d ? GpsLongitudeRef.EAST : GpsLongitudeRef.WEST);
        if (buildTag == null || buildTag2 == null || buildTag3 == null || buildTag4 == null) {
            return false;
        }
        setTag(buildTag);
        setTag(buildTag2);
        setTag(buildTag3);
        setTag(buildTag4);
        return true;
    }

    public boolean addGpsDateTimeStampTag(long j) {
        OplusExifTag buildTag = buildTag(TAG_GPS_DATE_STAMP, this.mGPSDateStampFormat.format(Long.valueOf(j)));
        if (buildTag == null) {
            return false;
        }
        setTag(buildTag);
        this.mGPSTimeStampCalendar.setTimeInMillis(j);
        OplusExifTag buildTag2 = buildTag(TAG_GPS_TIME_STAMP,
                new OplusRational[] { new OplusRational(this.mGPSTimeStampCalendar.get(11), 1L),
                        new OplusRational(this.mGPSTimeStampCalendar.get(12), 1L),
                        new OplusRational(this.mGPSTimeStampCalendar.get(13), 1L) });
        if (buildTag2 == null) {
            return false;
        }
        setTag(buildTag2);
        return true;
    }

    private static OplusRational[] toExifLatLong(double d) {
        double abs = Math.abs(d);
        int i = (int) abs;
        double d2 = (abs - i) * 60.0d;
        int i2 = (int) d2;
        return new OplusRational[] { new OplusRational(i, 1L), new OplusRational(i2, 1L),
                new OplusRational((int) ((d2 - i2) * 6000.0d), 100L) };
    }

    private void doExifStreamIO(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[OplusExifTag.EXIF_TAG_FILTER];
        int read = inputStream.read(bArr, 0, OplusExifTag.EXIF_TAG_FILTER);
        while (read != -1) {
            outputStream.write(bArr, 0, read);
            read = inputStream.read(bArr, 0, OplusExifTag.EXIF_TAG_FILTER);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SparseIntArray getTagInfo() {
        if (this.mTagInfo == null) {
            this.mTagInfo = new SparseIntArray();
            initTagInfo();
        }
        return this.mTagInfo;
    }

    private void initTagInfo() {
        int flagsFromAllowedIfds = getFlagsFromAllowedIfds(new int[] { 0, 1 }) << 24;
        SparseIntArray sparseIntArray = this.mTagInfo;
        int i = TAG_MAKE;
        int i2 = flagsFromAllowedIfds | 131072;
        int i3 = i2 | 0;
        sparseIntArray.put(i, i3);
        int i4 = flagsFromAllowedIfds | 262144;
        int i5 = i4 | 1;
        this.mTagInfo.put(TAG_IMAGE_WIDTH, i5);
        this.mTagInfo.put(TAG_IMAGE_LENGTH, i5);
        int i6 = flagsFromAllowedIfds | 196608;
        this.mTagInfo.put(TAG_BITS_PER_SAMPLE, i6 | 3);
        int i7 = i6 | 1;
        this.mTagInfo.put(TAG_COMPRESSION, i7);
        this.mTagInfo.put(TAG_PHOTOMETRIC_INTERPRETATION, i7);
        this.mTagInfo.put(TAG_ORIENTATION, i7);
        this.mTagInfo.put(TAG_SAMPLES_PER_PIXEL, i7);
        this.mTagInfo.put(TAG_PLANAR_CONFIGURATION, i7);
        this.mTagInfo.put(TAG_Y_CB_CR_SUB_SAMPLING, i6 | 2);
        this.mTagInfo.put(TAG_Y_CB_CR_POSITIONING, i7);
        int i8 = flagsFromAllowedIfds | 327680;
        int i9 = i8 | 1;
        this.mTagInfo.put(TAG_X_RESOLUTION, i9);
        this.mTagInfo.put(TAG_Y_RESOLUTION, i9);
        this.mTagInfo.put(TAG_RESOLUTION_UNIT, i7);
        int i10 = i4 | 0;
        this.mTagInfo.put(TAG_STRIP_OFFSETS, i10);
        this.mTagInfo.put(TAG_ROWS_PER_STRIP, i5);
        this.mTagInfo.put(TAG_STRIP_BYTE_COUNTS, i10);
        this.mTagInfo.put(TAG_TRANSFER_FUNCTION, i6 | 768);
        this.mTagInfo.put(TAG_WHITE_POINT, i8 | 2);
        int i11 = i8 | 6;
        this.mTagInfo.put(TAG_PRIMARY_CHROMATICITIES, i11);
        this.mTagInfo.put(TAG_Y_CB_CR_COEFFICIENTS, i8 | 3);
        this.mTagInfo.put(TAG_REFERENCE_BLACK_WHITE, i11);
        this.mTagInfo.put(TAG_DATE_TIME, i2 | 20);
        this.mTagInfo.put(TAG_IMAGE_DESCRIPTION, i3);
        this.mTagInfo.put(i, i3);
        this.mTagInfo.put(TAG_MODEL, i3);
        this.mTagInfo.put(TAG_SOFTWARE, i3);
        this.mTagInfo.put(TAG_ARTIST, i3);
        this.mTagInfo.put(TAG_COPYRIGHT, i3);
        this.mTagInfo.put(TAG_EXIF_IFD, i5);
        this.mTagInfo.put(TAG_GPS_IFD, i5);
        int flagsFromAllowedIfds2 = (getFlagsFromAllowedIfds(new int[] { 1 }) << 24) | 262144 | 1;
        this.mTagInfo.put(TAG_JPEG_INTERCHANGE_FORMAT, flagsFromAllowedIfds2);
        this.mTagInfo.put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, flagsFromAllowedIfds2);
        int flagsFromAllowedIfds3 = getFlagsFromAllowedIfds(new int[] { 2 }) << 24;
        int i12 = flagsFromAllowedIfds3 | 458752;
        int i13 = i12 | 4;
        this.mTagInfo.put(TAG_EXIF_VERSION, i13);
        this.mTagInfo.put(TAG_FLASHPIX_VERSION, i13);
        int i14 = flagsFromAllowedIfds3 | 196608;
        int i15 = i14 | 1;
        this.mTagInfo.put(TAG_COLOR_SPACE, i15);
        this.mTagInfo.put(TAG_COMPONENTS_CONFIGURATION, i13);
        int i16 = flagsFromAllowedIfds3 | 327680 | 1;
        this.mTagInfo.put(TAG_COMPRESSED_BITS_PER_PIXEL, i16);
        int i17 = 262144 | flagsFromAllowedIfds3 | 1;
        this.mTagInfo.put(TAG_PIXEL_X_DIMENSION, i17);
        this.mTagInfo.put(TAG_PIXEL_Y_DIMENSION, i17);
        int i18 = i12 | 0;
        this.mTagInfo.put(TAG_MAKER_NOTE, i18);
        this.mTagInfo.put(TAG_USER_COMMENT, i18);
        int i19 = flagsFromAllowedIfds3 | 131072;
        this.mTagInfo.put(TAG_RELATED_SOUND_FILE, i19 | 13);
        int i20 = i19 | 20;
        this.mTagInfo.put(TAG_DATE_TIME_ORIGINAL, i20);
        this.mTagInfo.put(TAG_DATE_TIME_DIGITIZED, i20);
        int i21 = i19 | 0;
        this.mTagInfo.put(TAG_SUB_SEC_TIME, i21);
        this.mTagInfo.put(TAG_SUB_SEC_TIME_ORIGINAL, i21);
        this.mTagInfo.put(TAG_SUB_SEC_TIME_DIGITIZED, i21);
        this.mTagInfo.put(TAG_OFFSET_TIME_ORIGINAL, i21);
        this.mTagInfo.put(TAG_IMAGE_UNIQUE_ID, i19 | 33);
        this.mTagInfo.put(TAG_EXPOSURE_TIME, i16);
        this.mTagInfo.put(TAG_F_NUMBER, i16);
        this.mTagInfo.put(TAG_EXPOSURE_PROGRAM, i15);
        this.mTagInfo.put(TAG_SPECTRAL_SENSITIVITY, i21);
        int i22 = i14 | 0;
        this.mTagInfo.put(TAG_ISO_SPEED_RATINGS, i22);
        this.mTagInfo.put(TAG_OECF, i18);
        int i23 = flagsFromAllowedIfds3 | 655360 | 1;
        this.mTagInfo.put(TAG_SHUTTER_SPEED_VALUE, i23);
        this.mTagInfo.put(TAG_APERTURE_VALUE, i16);
        this.mTagInfo.put(TAG_BRIGHTNESS_VALUE, i23);
        this.mTagInfo.put(TAG_EXPOSURE_BIAS_VALUE, i23);
        this.mTagInfo.put(TAG_MAX_APERTURE_VALUE, i16);
        this.mTagInfo.put(TAG_SUBJECT_DISTANCE, i16);
        this.mTagInfo.put(TAG_METERING_MODE, i15);
        this.mTagInfo.put(TAG_LIGHT_SOURCE, i15);
        this.mTagInfo.put(TAG_FLASH, i15);
        this.mTagInfo.put(TAG_FOCAL_LENGTH, i16);
        this.mTagInfo.put(TAG_SUBJECT_AREA, i22);
        this.mTagInfo.put(TAG_FLASH_ENERGY, i16);
        this.mTagInfo.put(TAG_SPATIAL_FREQUENCY_RESPONSE, i18);
        this.mTagInfo.put(TAG_FOCAL_PLANE_X_RESOLUTION, i16);
        this.mTagInfo.put(TAG_FOCAL_PLANE_Y_RESOLUTION, i16);
        this.mTagInfo.put(TAG_FOCAL_PLANE_RESOLUTION_UNIT, i15);
        this.mTagInfo.put(TAG_SUBJECT_LOCATION, 2 | i14);
        this.mTagInfo.put(TAG_EXPOSURE_INDEX, i16);
        this.mTagInfo.put(TAG_SENSING_METHOD, i15);
        int i24 = i12 | 1;
        this.mTagInfo.put(TAG_FILE_SOURCE, i24);
        this.mTagInfo.put(TAG_SCENE_TYPE, i24);
        this.mTagInfo.put(TAG_CFA_PATTERN, i18);
        this.mTagInfo.put(TAG_CUSTOM_RENDERED, i15);
        this.mTagInfo.put(TAG_EXPOSURE_MODE, i15);
        this.mTagInfo.put(TAG_WHITE_BALANCE, i15);
        this.mTagInfo.put(TAG_DIGITAL_ZOOM_RATIO, i16);
        this.mTagInfo.put(TAG_FOCAL_LENGTH_IN_35_MM_FILE, i15);
        this.mTagInfo.put(TAG_SCENE_CAPTURE_TYPE, i15);
        this.mTagInfo.put(TAG_GAIN_CONTROL, i16);
        this.mTagInfo.put(TAG_CONTRAST, i15);
        this.mTagInfo.put(TAG_SATURATION, i15);
        this.mTagInfo.put(TAG_SHARPNESS, i15);
        this.mTagInfo.put(TAG_DEVICE_SETTING_DESCRIPTION, i18);
        this.mTagInfo.put(TAG_SUBJECT_DISTANCE_RANGE, i15);
        this.mTagInfo.put(TAG_INTEROPERABILITY_IFD, i17);
        int flagsFromAllowedIfds4 = getFlagsFromAllowedIfds(new int[] { 4 }) << 24;
        int i25 = 65536 | flagsFromAllowedIfds4;
        this.mTagInfo.put(TAG_GPS_VERSION_ID, i25 | 4);
        int i26 = flagsFromAllowedIfds4 | 131072;
        int i27 = i26 | 2;
        this.mTagInfo.put(TAG_GPS_LATITUDE_REF, i27);
        this.mTagInfo.put(TAG_GPS_LONGITUDE_REF, i27);
        int i28 = flagsFromAllowedIfds4 | 655360 | 3;
        this.mTagInfo.put(TAG_GPS_LATITUDE, i28);
        this.mTagInfo.put(TAG_GPS_LONGITUDE, i28);
        this.mTagInfo.put(TAG_GPS_ALTITUDE_REF, i25 | 1);
        int i29 = 327680 | flagsFromAllowedIfds4;
        int i30 = i29 | 1;
        this.mTagInfo.put(TAG_GPS_ALTITUDE, i30);
        this.mTagInfo.put(TAG_GPS_TIME_STAMP, i29 | 3);
        int i31 = i26 | 0;
        this.mTagInfo.put(TAG_GPS_SATTELLITES, i31);
        this.mTagInfo.put(TAG_GPS_STATUS, i27);
        this.mTagInfo.put(TAG_GPS_MEASURE_MODE, i27);
        this.mTagInfo.put(TAG_GPS_DOP, i30);
        this.mTagInfo.put(TAG_GPS_SPEED_REF, i27);
        this.mTagInfo.put(TAG_GPS_SPEED, i30);
        this.mTagInfo.put(TAG_GPS_TRACK_REF, i27);
        this.mTagInfo.put(TAG_GPS_TRACK, i30);
        this.mTagInfo.put(TAG_GPS_IMG_DIRECTION_REF, i27);
        this.mTagInfo.put(TAG_GPS_IMG_DIRECTION, i30);
        this.mTagInfo.put(TAG_GPS_MAP_DATUM, i31);
        this.mTagInfo.put(TAG_GPS_DEST_LATITUDE_REF, i27);
        this.mTagInfo.put(TAG_GPS_DEST_LATITUDE, i30);
        this.mTagInfo.put(TAG_GPS_DEST_BEARING_REF, i27);
        this.mTagInfo.put(TAG_GPS_DEST_BEARING, i30);
        this.mTagInfo.put(TAG_GPS_DEST_DISTANCE_REF, i27);
        this.mTagInfo.put(TAG_GPS_DEST_DISTANCE, i30);
        int i32 = 458752 | flagsFromAllowedIfds4 | 0;
        this.mTagInfo.put(TAG_GPS_PROCESSING_METHOD, i32);
        this.mTagInfo.put(TAG_GPS_AREA_INFORMATION, i32);
        this.mTagInfo.put(TAG_GPS_DATE_STAMP, i26 | 11);
        this.mTagInfo.put(TAG_GPS_DIFFERENTIAL, flagsFromAllowedIfds4 | 196608 | 11);
        this.mTagInfo.put(TAG_INTEROPERABILITY_INDEX, (getFlagsFromAllowedIfds(new int[] { 3 }) << 24) | 131072 | 0);
    }

    protected static int[] getAllowedIfdsFromInfo(int i) {
        int allowedIfdFlagsFromInfo = getAllowedIfdFlagsFromInfo(i);
        int[] ifds = OplusIfdData.getIfds();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            if (((allowedIfdFlagsFromInfo >> i3) & 1) == 1) {
                arrayList.add(Integer.valueOf(ifds[i3]));
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            iArr[i2] = ((Integer) it.next()).intValue();
            i2++;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isIfdAllowed(int i, int i2) {
        int[] ifds = OplusIfdData.getIfds();
        int allowedIfdFlagsFromInfo = getAllowedIfdFlagsFromInfo(i);
        for (int i3 = 0; i3 < ifds.length; i3++) {
            if (i2 == ifds[i3] && ((allowedIfdFlagsFromInfo >> i3) & 1) == 1) {
                return true;
            }
        }
        return false;
    }

    protected static int getFlagsFromAllowedIfds(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        int[] ifds = OplusIfdData.getIfds();
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int length = iArr.length;
            int i3 = 0;
            while (true) {
                if (i3 < length) {
                    if (ifds[i2] == iArr[i3]) {
                        i |= 1 << i2;
                        break;
                    }
                    i3++;
                }
            }
        }
        return i;
    }
}
