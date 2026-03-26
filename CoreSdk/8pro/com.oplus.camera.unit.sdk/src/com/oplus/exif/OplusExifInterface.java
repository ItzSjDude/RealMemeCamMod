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

/* JADX INFO: loaded from: classes.dex */
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
    public static final int TAG_IMAGE_WIDTH = defineTag(0, (short) 256);
    public static final int TAG_IMAGE_LENGTH = defineTag(0, (short) 257);
    public static final int TAG_BITS_PER_SAMPLE = defineTag(0, (short) 258);
    public static final int TAG_COMPRESSION = defineTag(0, (short) 259);
    public static final int TAG_PHOTOMETRIC_INTERPRETATION = defineTag(0, (short) 262);
    public static final int TAG_IMAGE_DESCRIPTION = defineTag(0, (short) 270);
    public static final int TAG_MAKE = defineTag(0, (short) 271);
    public static final int TAG_MODEL = defineTag(0, (short) 272);

    public interface ColorSpace {
        public static final short SRGB = 1;
        public static final short UNCALIBRATED = -1;
    }

    public interface ComponentsConfiguration {
        public static final short B = 6;
        public static final short CB = 2;
        public static final short CR = 3;
        public static final short G = 5;
        public static final short NOT_EXIST = 0;
        public static final short R = 4;
        public static final short Y = 1;
    }

    public interface Compression {
        public static final short JPEG = 6;
        public static final short UNCOMPRESSION = 1;
    }

    public interface Contrast {
        public static final short HARD = 2;
        public static final short NORMAL = 0;
        public static final short SOFT = 1;
    }

    public interface ExposureMode {
        public static final short AUTO_BRACKET = 2;
        public static final short AUTO_EXPOSURE = 0;
        public static final short MANUAL_EXPOSURE = 1;
    }

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

    public interface FileSource {
        public static final short DSC = 3;
    }

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

    public interface GainControl {
        public static final short HIGH_DOWN = 4;
        public static final short HIGH_UP = 2;
        public static final short LOW_DOWN = 3;
        public static final short LOW_UP = 1;
        public static final short NONE = 0;
    }

    public interface GpsAltitudeRef {
        public static final short SEA_LEVEL = 0;
        public static final short SEA_LEVEL_NEGATIVE = 1;
    }

    public interface GpsDifferential {
        public static final short DIFFERENTIAL_CORRECTION_APPLIED = 1;
        public static final short WITHOUT_DIFFERENTIAL_CORRECTION = 0;
    }

    public interface GpsLatitudeRef {
        public static final String NORTH = "N";
        public static final String SOUTH = "S";
    }

    public interface GpsLongitudeRef {
        public static final String EAST = "E";
        public static final String WEST = "W";
    }

    public interface GpsMeasureMode {
        public static final String MODE_2_DIMENSIONAL = "2";
        public static final String MODE_3_DIMENSIONAL = "3";
    }

    public interface GpsSpeedRef {
        public static final String KILOMETERS = "K";
        public static final String KNOTS = "N";
        public static final String MILES = "M";
    }

    public interface GpsStatus {
        public static final String INTEROPERABILITY = "V";
        public static final String IN_PROGRESS = "A";
    }

    public interface GpsTrackRef {
        public static final String MAGNETIC_DIRECTION = "M";
        public static final String TRUE_DIRECTION = "T";
    }

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

    public interface PhotometricInterpretation {
        public static final short RGB = 2;
        public static final short YCBCR = 6;
    }

    public interface PlanarConfiguration {
        public static final short CHUNKY = 1;
        public static final short PLANAR = 2;
    }

    public interface ResolutionUnit {
        public static final short CENTIMETERS = 3;
        public static final short INCHES = 2;
    }

    public interface Saturation {
        public static final short HIGH = 2;
        public static final short LOW = 1;
        public static final short NORMAL = 0;
    }

    public interface SceneCapture {
        public static final short LANDSCAPE = 1;
        public static final short NIGHT_SCENE = 3;
        public static final short PROTRAIT = 2;
        public static final short STANDARD = 0;
    }

    public interface SceneType {
        public static final short DIRECT_PHOTOGRAPHED = 1;
    }

    public interface SensingMethod {
        public static final short COLOR_SEQUENTIAL_AREA = 5;
        public static final short COLOR_SEQUENTIAL_LINEAR = 8;
        public static final short NOT_DEFINED = 1;
        public static final short ONE_CHIP_COLOR = 2;
        public static final short THREE_CHIP_COLOR = 4;
        public static final short TRILINEAR = 7;
        public static final short TWO_CHIP_COLOR = 3;
    }

    public interface Sharpness {
        public static final short HARD = 2;
        public static final short NORMAL = 0;
        public static final short SOFT = 1;
    }

    public interface SubjectDistance {
        public static final short CLOSE_VIEW = 2;
        public static final short DISTANT_VIEW = 3;
        public static final short MACRO = 1;
        public static final short UNKNOWN = 0;
    }

    public interface WhiteBalance {
        public static final short AUTO = 0;
        public static final short MANUAL = 1;
    }

    public interface YCbCrPositioning {
        public static final short CENTERED = 1;
        public static final short CO_SITED = 2;
    }

    public static int defineTag(int ifdId, short tagId) {
        return (ifdId << 16) | (tagId & ColorSpace.UNCALIBRATED);
    }

    protected static int getAllowedIfdFlagsFromInfo(int tagInfo) {
        return tagInfo >>> 24;
    }

    protected static int getComponentCountFromInfo(int tagInfo) {
        return tagInfo & 65535;
    }

    public static int getRotationForOrientationValue(short orientation) {
        if (orientation == 3) {
            return 180;
        }
        if (orientation != 6) {
            return orientation != 8 ? 0 : 270;
        }
        return 90;
    }

    public static int getTrueIfd(int tagId) {
        return tagId >>> 16;
    }

    public static short getTrueTagKey(int tagId) {
        return (short) tagId;
    }

    protected static short getTypeFromInfo(int tagInfo) {
        return (short) ((tagInfo >> 16) & 255);
    }

    static {
        int iDefineTag = defineTag(0, (short) 273);
        TAG_STRIP_OFFSETS = iDefineTag;
        TAG_ORIENTATION = defineTag(0, (short) 274);
        TAG_SAMPLES_PER_PIXEL = defineTag(0, (short) 277);
        TAG_ROWS_PER_STRIP = defineTag(0, (short) 278);
        int iDefineTag2 = defineTag(0, (short) 279);
        TAG_STRIP_BYTE_COUNTS = iDefineTag2;
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
        int iDefineTag3 = defineTag(0, (short) -30871);
        TAG_EXIF_IFD = iDefineTag3;
        int iDefineTag4 = defineTag(0, (short) -30683);
        TAG_GPS_IFD = iDefineTag4;
        int iDefineTag5 = defineTag(1, (short) 513);
        TAG_JPEG_INTERCHANGE_FORMAT = iDefineTag5;
        int iDefineTag6 = defineTag(1, (short) 514);
        TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = iDefineTag6;
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
        int iDefineTag7 = defineTag(2, (short) -24571);
        TAG_INTEROPERABILITY_IFD = iDefineTag7;
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
        hashSet.add(Short.valueOf(getTrueTagKey(iDefineTag4)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(iDefineTag3)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(iDefineTag5)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(iDefineTag7)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(iDefineTag)));
        HashSet<Short> hashSet2 = new HashSet<>(sOffsetTags);
        sBannedDefines = hashSet2;
        hashSet2.add(Short.valueOf(getTrueTagKey(-1)));
        hashSet2.add(Short.valueOf(getTrueTagKey(iDefineTag6)));
        hashSet2.add(Short.valueOf(getTrueTagKey(iDefineTag2)));
        DEFAULT_BYTE_ORDER = ByteOrder.BIG_ENDIAN;
    }

    public OplusExifInterface() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(GPS_DATE_FORMAT_STR);
        this.mGPSDateStampFormat = simpleDateFormat;
        this.mGPSTimeStampCalendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        this.mTagInfo = null;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public void readExif(byte[] rawData) throws IOException {
        readExif(new ByteArrayInputStream(rawData));
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

    public void readExif(String filePath) throws IOException {
        if (filePath == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        try (BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(filePath))) {
            readExif(bufferedInputStream);
        }
    }

    public void setExif(Collection<OplusExifTag> collection) {
        clearExif();
        setTags(collection);
    }

    public void clearExif() {
        this.mData = new OplusExifData(DEFAULT_BYTE_ORDER);
    }

    public void writeExif(byte[] rawData, OutputStream outputStream) throws IOException {
        if (rawData == null || outputStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream exifWriterStream = getExifWriterStream(outputStream);
        exifWriterStream.write(rawData, 0, rawData.length);
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

    public void writeExif(byte[] rawData, String filePath) throws IOException {
        if (rawData == null || filePath == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream exifWriterStream = null;
        try {
            exifWriterStream = getExifWriterStream(filePath);
            exifWriterStream.write(rawData, 0, rawData.length);
            exifWriterStream.flush();
            exifWriterStream.close();
        } catch (IOException e) {
            closeSilently(exifWriterStream);
            throw e;
        }
    }

    public void writeExif(Bitmap bitmap, String filePath) throws IOException {
        if (bitmap == null || filePath == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream exifWriterStream = null;
        try {
            exifWriterStream = getExifWriterStream(filePath);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 90, exifWriterStream);
            exifWriterStream.flush();
            exifWriterStream.close();
        } catch (IOException e) {
            closeSilently(exifWriterStream);
            throw e;
        }
    }

    public void writeExif(InputStream inputStream, String filePath) throws IOException {
        if (inputStream == null || filePath == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream exifWriterStream = null;
        try {
            exifWriterStream = getExifWriterStream(filePath);
            doExifStreamIO(inputStream, exifWriterStream);
            exifWriterStream.flush();
            exifWriterStream.close();
        } catch (IOException e) {
            closeSilently(exifWriterStream);
            throw e;
        }
    }

    public void writeExif(String inputFilePath, String outputFilePath) throws IOException {
        if (inputFilePath == null || outputFilePath == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        try (FileInputStream fileInputStream = new FileInputStream(inputFilePath)) {
            writeExif(fileInputStream, outputFilePath);
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

    public OutputStream getExifWriterStream(String filePath) throws FileNotFoundException {
        if (filePath == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        try {
            return getExifWriterStream(new FileOutputStream(filePath));
        } catch (FileNotFoundException e) {
            closeSilently(null);
            throw e;
        }
    }

    /*
     * JADX DEBUG: Failed to insert an additional move for type inference into block
     * B:14:0x004a
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v3 */
    public boolean rewriteExif(String filePath, Collection<OplusExifTag> tags) throws Exception {
        RandomAccessFile randomAccessFile = null;
        BufferedInputStream bufferedInputStream = null;
        try {
            File file = new File(filePath);
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            long offsetToExifEndFromSOF = OplusExifParser.parse(bufferedInputStream, this).getOffsetToExifEndFromSOF();
            bufferedInputStream.close();
            bufferedInputStream = null;

            randomAccessFile = new RandomAccessFile(file, "rw");
            boolean zRewriteExif = rewriteExif(
                    randomAccessFile.getChannel().map(FileChannel.MapMode.READ_WRITE, 0L, offsetToExifEndFromSOF),
                    tags);
            return zRewriteExif;
        } catch (OplusExifInvalidFormatException e) {
            throw new IOException("Invalid exif format : ", e);
        } catch (IOException e) {
            throw e;
        } finally {
            if (bufferedInputStream != null)
                closeSilently(bufferedInputStream);
            if (randomAccessFile != null)
                closeSilently(randomAccessFile);
        }
    }

    public boolean rewriteExif(ByteBuffer buffer, Collection<OplusExifTag> tags) throws Exception {
        try {
            OplusExifModifier oplusExifModifier = new OplusExifModifier(buffer, this);
            Iterator<OplusExifTag> it = tags.iterator();
            while (it.hasNext()) {
                oplusExifModifier.modifyTag(it.next());
            }
            return oplusExifModifier.commit();
        } catch (OplusExifInvalidFormatException e) {
            throw new IOException("Invalid exif format : " + e);
        }
    }

    public void forceRewriteExif(String filePath, Collection<OplusExifTag> tags) throws Exception {
        if (tags == null || rewriteExif(filePath, tags)) {
            return;
        }
        OplusExifData oplusExifData = this.mData;
        this.mData = new OplusExifData(DEFAULT_BYTE_ORDER);
        try (InputStream fileInputStream = new FileInputStream(filePath)) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            doExifStreamIO(fileInputStream, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            readExif(byteArray);
            setTags(tags);
            writeExif(byteArray, filePath);
            this.mData = oplusExifData;
        } catch (IOException e) {
            this.mData = oplusExifData;
            throw e;
        } catch (Throwable th) {
            this.mData = oplusExifData;
            throw th;
        }
    }

    public void forceRewriteExif(String filePath) throws Exception {
        forceRewriteExif(filePath, getAllTags());
    }

    public List<OplusExifTag> getAllTags() {
        return this.mData.getAllTags();
    }

    public List<OplusExifTag> getTagsForTagId(short tagId) {
        return this.mData.getAllTagsForTagId(tagId);
    }

    public List<OplusExifTag> getTagsForIfdId(int ifdId) {
        return this.mData.getAllTagsForIfd(ifdId);
    }

    public OplusExifTag getTag(int tagId, int ifdId) {
        if (OplusExifTag.isValidIfd(ifdId)) {
            return this.mData.getTag(getTrueTagKey(tagId), ifdId);
        }
        return null;
    }

    public OplusExifTag getTag(int tagId) {
        return getTag(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public Object getTagValue(int tagId, int ifdId) {
        OplusExifTag tag = getTag(tagId, ifdId);
        if (tag == null) {
            return null;
        }
        return tag.getValue();
    }

    public Object getTagValue(int tagId) {
        return getTagValue(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public String getTagStringValue(int tagId, int ifdId) {
        OplusExifTag tag = getTag(tagId, ifdId);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsString();
    }

    public String getTagStringValue(int tagId) {
        return getTagStringValue(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public Long getTagLongValue(int tagId, int ifdId) {
        long[] tagLongValues = getTagLongValues(tagId, ifdId);
        if (tagLongValues == null || tagLongValues.length <= 0) {
            return null;
        }
        return Long.valueOf(tagLongValues[0]);
    }

    public Long getTagLongValue(int tagId) {
        return getTagLongValue(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public Integer getTagIntValue(int tagId, int ifdId) {
        int[] tagIntValues = getTagIntValues(tagId, ifdId);
        if (tagIntValues == null || tagIntValues.length <= 0) {
            return null;
        }
        return Integer.valueOf(tagIntValues[0]);
    }

    public Integer getTagIntValue(int tagId) {
        return getTagIntValue(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public Byte getTagByteValue(int tagId, int ifdId) {
        byte[] tagByteValues = getTagByteValues(tagId, ifdId);
        if (tagByteValues == null || tagByteValues.length <= 0) {
            return null;
        }
        return Byte.valueOf(tagByteValues[0]);
    }

    public Byte getTagByteValue(int tagId) {
        return getTagByteValue(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public OplusRational getTagRationalValue(int tagId, int ifdId) {
        OplusRational[] tagRationalValues = getTagRationalValues(tagId, ifdId);
        if (tagRationalValues == null || tagRationalValues.length == 0) {
            return null;
        }
        return new OplusRational(tagRationalValues[0]);
    }

    public OplusRational getTagRationalValue(int tagId) {
        return getTagRationalValue(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public long[] getTagLongValues(int tagId, int ifdId) {
        OplusExifTag tag = getTag(tagId, ifdId);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsLongs();
    }

    public long[] getTagLongValues(int tagId) {
        return getTagLongValues(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public int[] getTagIntValues(int tagId, int ifdId) {
        OplusExifTag tag = getTag(tagId, ifdId);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsInts();
    }

    public int[] getTagIntValues(int tagId) {
        return getTagIntValues(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public byte[] getTagByteValues(int tagId, int ifdId) {
        OplusExifTag tag = getTag(tagId, ifdId);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsBytes();
    }

    public byte[] getTagByteValues(int tagId) {
        return getTagByteValues(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public OplusRational[] getTagRationalValues(int tagId, int ifdId) {
        OplusExifTag tag = getTag(tagId, ifdId);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsRationals();
    }

    public OplusRational[] getTagRationalValues(int tagId) {
        return getTagRationalValues(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public boolean isTagCountDefined(int tagId) {
        int tagInfo = getTagInfo().get(tagId);
        return (tagInfo == 0 || getComponentCountFromInfo(tagInfo) == 0) ? false : true;
    }

    public int getDefinedTagCount(int tagId) {
        int tagInfo = getTagInfo().get(tagId);
        if (tagInfo == 0) {
            return 0;
        }
        return getComponentCountFromInfo(tagInfo);
    }

    public int getActualTagCount(int tagId, int ifdId) {
        OplusExifTag tag = getTag(tagId, ifdId);
        if (tag == null) {
            return 0;
        }
        return tag.getComponentCount();
    }

    public int getDefinedTagDefaultIfd(int tagId) {
        if (getTagInfo().get(tagId) == 0) {
            return -1;
        }
        return getTrueIfd(tagId);
    }

    public short getDefinedTagType(int tagId) {
        int tagInfo = getTagInfo().get(tagId);
        if (tagInfo == 0) {
            return (short) -1;
        }
        return getTypeFromInfo(tagInfo);
    }

    protected static boolean isOffsetTag(short s) {
        return sOffsetTags.contains(Short.valueOf(s));
    }

    public OplusExifTag buildTag(int tagId, int ifdId, Object value) {
        int tagInfo = getTagInfo().get(tagId);
        if (tagInfo == 0 || value == null) {
            return null;
        }
        short typeFromInfo = getTypeFromInfo(tagInfo);
        int componentCountFromInfo = getComponentCountFromInfo(tagInfo);
        boolean hasValue = componentCountFromInfo != 0;
        if (!isIfdAllowed(tagInfo, ifdId)) {
            return null;
        }
        OplusExifTag tag = new OplusExifTag(getTrueTagKey(tagId), typeFromInfo, componentCountFromInfo, ifdId,
                hasValue);
        if (tag.setValue(value)) {
            return tag;
        }
        return null;
    }

    public OplusExifTag buildTag(int tagId, Object value) {
        return buildTag(tagId, getTrueIfd(tagId), value);
    }

    protected OplusExifTag buildUninitializedTag(int tagId) {
        int tagInfo = getTagInfo().get(tagId);
        if (tagInfo == 0) {
            return null;
        }
        short typeFromInfo = getTypeFromInfo(tagInfo);
        int componentCountFromInfo = getComponentCountFromInfo(tagInfo);
        boolean hasValue = componentCountFromInfo != 0;
        return new OplusExifTag(getTrueTagKey(tagId), typeFromInfo, componentCountFromInfo, getTrueIfd(tagId),
                hasValue);
    }

    public boolean setTagValue(int tagId, int ifdId, Object value) {
        OplusExifTag tag = getTag(tagId, ifdId);
        if (tag == null) {
            return false;
        }
        return tag.setValue(value);
    }

    public boolean setTagValue(int tagId, Object value) {
        return setTagValue(tagId, getDefinedTagDefaultIfd(tagId), value);
    }

    public OplusExifTag setTag(OplusExifTag tag) {
        return this.mData.addTag(tag);
    }

    public void setTags(Collection<OplusExifTag> collection) {
        Iterator<OplusExifTag> it = collection.iterator();
        while (it.hasNext()) {
            setTag(it.next());
        }
    }

    public void deleteTag(int tagId, int ifdId) {
        this.mData.removeTag(getTrueTagKey(tagId), ifdId);
    }

    public void deleteTag(int tagId) {
        deleteTag(tagId, getDefinedTagDefaultIfd(tagId));
    }

    public int setTagDefinition(short tagId, int ifdId, short type, short componentCount, int[] allowedIfds) {
        int definedTag;
        if (sBannedDefines.contains(Short.valueOf(tagId)) || !OplusExifTag.isValidType(type)
                || !OplusExifTag.isValidIfd(ifdId)
                || (definedTag = defineTag(ifdId, tagId)) == -1) {
            return -1;
        }
        int[] tagDefinitionsForTagId = getTagDefinitionsForTagId(tagId);
        SparseIntArray tagInfo = getTagInfo();
        boolean ifdFound = false;
        for (int allowedIfd : allowedIfds) {
            if (ifdId == allowedIfd) {
                ifdFound = true;
            }
            if (!OplusExifTag.isValidIfd(allowedIfd)) {
                return -1;
            }
        }
        if (!ifdFound) {
            return -1;
        }
        int flagsFromAllowedIfds = getFlagsFromAllowedIfds(allowedIfds);
        if (tagDefinitionsForTagId != null) {
            for (int definition : tagDefinitionsForTagId) {
                if ((getAllowedIfdFlagsFromInfo(tagInfo.get(definition)) & flagsFromAllowedIfds) != 0) {
                    return -1;
                }
            }
        }
        getTagInfo().put(definedTag, (flagsFromAllowedIfds << 24) | (type << 16) | componentCount);
        return definedTag;
    }

    protected int getTagDefinition(short tagId, int ifdId) {
        return getTagInfo().get(defineTag(ifdId, tagId));
    }

    protected int[] getTagDefinitionsForTagId(short tagId) {
        int[] ifds = OplusIfdData.getIfds();
        int[] definitions = new int[ifds.length];
        SparseIntArray tagInfoMap = getTagInfo();
        int count = 0;
        for (int ifdId : ifds) {
            int definedTag = defineTag(ifdId, tagId);
            if (tagInfoMap.get(definedTag) != 0) {
                definitions[count] = definedTag;
                count++;
            }
        }
        if (count == 0) {
            return null;
        }
        return Arrays.copyOfRange(definitions, 0, count);
    }

    protected int getTagDefinitionForTag(OplusExifTag oplusExifTag) {
        return getTagDefinitionForTag(oplusExifTag.getTagId(), oplusExifTag.getDataType(),
                oplusExifTag.getComponentCount(), oplusExifTag.getIfd());
    }

    protected int getTagDefinitionForTag(short tagId, short type, int componentCount, int ifdId) {
        boolean ifdFound;
        int[] tagDefinitionsForTagId = getTagDefinitionsForTagId(tagId);
        if (tagDefinitionsForTagId == null) {
            return -1;
        }
        SparseIntArray tagInfoMap = getTagInfo();
        for (int definedTag : tagDefinitionsForTagId) {
            int tagInfo = tagInfoMap.get(definedTag);
            short typeFromInfo = getTypeFromInfo(tagInfo);
            int componentCountFromInfo = getComponentCountFromInfo(tagInfo);
            int[] allowedIfds = getAllowedIfdsFromInfo(tagInfo);
            int length = allowedIfds.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    ifdFound = false;
                    break;
                }
                if (allowedIfds[i] == ifdId) {
                    ifdFound = true;
                    break;
                }
                i++;
            }
            if (ifdFound && type == typeFromInfo
                    && (componentCount == componentCountFromInfo || componentCountFromInfo == 0)) {
                return definedTag;
            }
        }
        return -1;
    }

    public void removeTagDefinition(int tagId) {
        getTagInfo().delete(tagId);
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

    public static short getOrientationValueForRotation(int rotation) {
        int normalizedRotation = rotation % 360;
        if (normalizedRotation < 0) {
            normalizedRotation += 360;
        }
        if (normalizedRotation < 90) {
            return (short) 1;
        }
        if (normalizedRotation < 180) {
            return (short) 6;
        }
        return normalizedRotation < 270 ? (short) 3 : (short) 8;
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

    public boolean addDateTimeStampTag(int tagId, long timestamp, TimeZone timeZone) {
        if (tagId != TAG_DATE_TIME && tagId != TAG_DATE_TIME_DIGITIZED && tagId != TAG_DATE_TIME_ORIGINAL) {
            return false;
        }
        this.mDateTimeStampFormat.setTimeZone(timeZone);
        OplusExifTag tag = buildTag(tagId, this.mDateTimeStampFormat.format(Long.valueOf(timestamp)));
        if (tag == null) {
            return false;
        }
        setTag(tag);
        return true;
    }

    public boolean addGpsTags(double d, double d2) {
        OplusExifTag oplusExifTagBuildTag = buildTag(TAG_GPS_LATITUDE, toExifLatLong(d));
        OplusExifTag oplusExifTagBuildTag2 = buildTag(TAG_GPS_LONGITUDE, toExifLatLong(d2));
        OplusExifTag oplusExifTagBuildTag3 = buildTag(TAG_GPS_LATITUDE_REF, d >= 0.0d ? "N" : GpsLatitudeRef.SOUTH);
        OplusExifTag oplusExifTagBuildTag4 = buildTag(TAG_GPS_LONGITUDE_REF,
                d2 >= 0.0d ? GpsLongitudeRef.EAST : GpsLongitudeRef.WEST);
        if (oplusExifTagBuildTag == null || oplusExifTagBuildTag2 == null || oplusExifTagBuildTag3 == null
                || oplusExifTagBuildTag4 == null) {
            return false;
        }
        setTag(oplusExifTagBuildTag);
        setTag(oplusExifTagBuildTag2);
        setTag(oplusExifTagBuildTag3);
        setTag(oplusExifTagBuildTag4);
        return true;
    }

    public boolean addGpsDateTimeStampTag(long timestamp) {
        OplusExifTag dateStampTag = buildTag(TAG_GPS_DATE_STAMP,
                this.mGPSDateStampFormat.format(Long.valueOf(timestamp)));
        if (dateStampTag == null) {
            return false;
        }
        setTag(dateStampTag);
        this.mGPSTimeStampCalendar.setTimeInMillis(timestamp);
        OplusExifTag timeStampTag = buildTag(TAG_GPS_TIME_STAMP,
                new OplusRational[] { new OplusRational(this.mGPSTimeStampCalendar.get(Calendar.HOUR_OF_DAY), 1L),
                        new OplusRational(this.mGPSTimeStampCalendar.get(Calendar.MINUTE), 1L),
                        new OplusRational(this.mGPSTimeStampCalendar.get(Calendar.SECOND), 1L) });
        if (timeStampTag == null) {
            return false;
        }
        setTag(timeStampTag);
        return true;
    }

    private static OplusRational[] toExifLatLong(double value) {
        double absValue = Math.abs(value);
        int degrees = (int) absValue;
        double minutesRaw = (absValue - degrees) * 60.0d;
        int minutes = (int) minutesRaw;
        int seconds = (int) ((minutesRaw - minutes) * 60.0d);
        return new OplusRational[] { new OplusRational(degrees, 1L),
                new OplusRational(minutes, 1L),
                new OplusRational(seconds, 1L) };
    }

    private void doExifStreamIO(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] buffer = new byte[1024];
        int bytesRead = inputStream.read(buffer, 0, 1024);
        while (bytesRead != -1) {
            outputStream.write(buffer, 0, bytesRead);
            bytesRead = inputStream.read(buffer, 0, 1024);
        }
    }

    protected static void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    protected SparseIntArray getTagInfo() {
        if (this.mTagInfo == null) {
            this.mTagInfo = new SparseIntArray();
            initTagInfo();
        }
        return this.mTagInfo;
    }

    private void initTagInfo() {
        int ifd01Flags = getFlagsFromAllowedIfds(new int[] { 0, 1 }) << 24;
        SparseIntArray tagInfoMap = this.mTagInfo;
        int makeTag = TAG_MAKE;
        int ascii20 = ifd01Flags | 131072;
        int asciiAny = ascii20 | 0;
        tagInfoMap.put(makeTag, asciiAny);
        int longAny = ifd01Flags | 262144;
        int long1 = longAny | 1;
        tagInfoMap.put(TAG_IMAGE_WIDTH, long1);
        tagInfoMap.put(TAG_IMAGE_LENGTH, long1);
        int shortAny = ifd01Flags | 196608;
        tagInfoMap.put(TAG_BITS_PER_SAMPLE, shortAny | 3);
        int short1 = shortAny | 1;
        tagInfoMap.put(TAG_COMPRESSION, short1);
        tagInfoMap.put(TAG_PHOTOMETRIC_INTERPRETATION, short1);
        tagInfoMap.put(TAG_ORIENTATION, short1);
        tagInfoMap.put(TAG_SAMPLES_PER_PIXEL, short1);
        tagInfoMap.put(TAG_PLANAR_CONFIGURATION, short1);
        tagInfoMap.put(TAG_Y_CB_CR_SUB_SAMPLING, shortAny | 2);
        tagInfoMap.put(TAG_Y_CB_CR_POSITIONING, short1);
        int rationalAny = ifd01Flags | 327680;
        int rational1 = rationalAny | 1;
        tagInfoMap.put(TAG_X_RESOLUTION, rational1);
        tagInfoMap.put(TAG_Y_RESOLUTION, rational1);
        tagInfoMap.put(TAG_RESOLUTION_UNIT, short1);
        int offsetAny = longAny | 0;
        tagInfoMap.put(TAG_STRIP_OFFSETS, offsetAny);
        tagInfoMap.put(TAG_ROWS_PER_STRIP, long1);
        tagInfoMap.put(TAG_STRIP_BYTE_COUNTS, offsetAny);
        tagInfoMap.put(TAG_TRANSFER_FUNCTION, shortAny | 768);
        tagInfoMap.put(TAG_WHITE_POINT, rationalAny | 2);
        int rational6 = rationalAny | 6;
        tagInfoMap.put(TAG_PRIMARY_CHROMATICITIES, rational6);
        tagInfoMap.put(TAG_Y_CB_CR_COEFFICIENTS, rationalAny | 3);
        tagInfoMap.put(TAG_REFERENCE_BLACK_WHITE, rational6);
        tagInfoMap.put(TAG_DATE_TIME, ascii20 | 20);
        tagInfoMap.put(TAG_IMAGE_DESCRIPTION, asciiAny);
        tagInfoMap.put(makeTag, asciiAny);
        tagInfoMap.put(TAG_MODEL, asciiAny);
        tagInfoMap.put(TAG_SOFTWARE, asciiAny);
        tagInfoMap.put(TAG_ARTIST, asciiAny);
        tagInfoMap.put(TAG_COPYRIGHT, asciiAny);
        tagInfoMap.put(TAG_EXIF_IFD, long1);
        tagInfoMap.put(TAG_GPS_IFD, long1);
        int ifd1Flags = (getFlagsFromAllowedIfds(new int[] { 1 }) << 24) | 262144 | 1;
        tagInfoMap.put(TAG_JPEG_INTERCHANGE_FORMAT, ifd1Flags);
        tagInfoMap.put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, ifd1Flags);
        int ifd2Flags = getFlagsFromAllowedIfds(new int[] { 2 }) << 24;
        int undefinedAny = ifd2Flags | 458752;
        int undefined4 = undefinedAny | 4;
        tagInfoMap.put(TAG_EXIF_VERSION, undefined4);
        tagInfoMap.put(TAG_FLASHPIX_VERSION, undefined4);
        int shortAnyExif = ifd2Flags | 196608;
        int short1Exif = shortAnyExif | 1;
        tagInfoMap.put(TAG_COLOR_SPACE, short1Exif);
        tagInfoMap.put(TAG_COMPONENTS_CONFIGURATION, undefined4);
        int rational1Exif = ifd2Flags | 327680 | 1;
        tagInfoMap.put(TAG_COMPRESSED_BITS_PER_PIXEL, rational1Exif);
        int long1Exif = 262144 | ifd2Flags | 1;
        tagInfoMap.put(TAG_PIXEL_X_DIMENSION, long1Exif);
        tagInfoMap.put(TAG_PIXEL_Y_DIMENSION, long1Exif);
        int makerNoteAny = undefinedAny | 0;
        tagInfoMap.put(TAG_MAKER_NOTE, makerNoteAny);
        tagInfoMap.put(TAG_USER_COMMENT, makerNoteAny);
        int asciiAnyExif = ifd2Flags | 131072;
        tagInfoMap.put(TAG_RELATED_SOUND_FILE, asciiAnyExif | 13);
        int ascii20Exif = asciiAnyExif | 20;
        tagInfoMap.put(TAG_DATE_TIME_ORIGINAL, ascii20Exif);
        tagInfoMap.put(TAG_DATE_TIME_DIGITIZED, ascii20Exif);
        int asciiAnyAlt = asciiAnyExif | 0;
        tagInfoMap.put(TAG_SUB_SEC_TIME, asciiAnyAlt);
        tagInfoMap.put(TAG_SUB_SEC_TIME_ORIGINAL, asciiAnyAlt);
        tagInfoMap.put(TAG_SUB_SEC_TIME_DIGITIZED, asciiAnyAlt);
        tagInfoMap.put(TAG_OFFSET_TIME_ORIGINAL, asciiAnyAlt);
        tagInfoMap.put(TAG_IMAGE_UNIQUE_ID, asciiAnyExif | 33);
        tagInfoMap.put(TAG_EXPOSURE_TIME, rational1Exif);
        tagInfoMap.put(TAG_F_NUMBER, rational1Exif);
        tagInfoMap.put(TAG_EXPOSURE_PROGRAM, short1Exif);
        tagInfoMap.put(TAG_SPECTRAL_SENSITIVITY, asciiAnyAlt);
        int shortAnyExif2 = shortAnyExif | 0;
        tagInfoMap.put(TAG_ISO_SPEED_RATINGS, shortAnyExif2);
        tagInfoMap.put(TAG_OECF, makerNoteAny);
        int srational1Exif = ifd2Flags | 655360 | 1;
        tagInfoMap.put(TAG_SHUTTER_SPEED_VALUE, srational1Exif);
        tagInfoMap.put(TAG_APERTURE_VALUE, rational1Exif);
        tagInfoMap.put(TAG_BRIGHTNESS_VALUE, srational1Exif);
        tagInfoMap.put(TAG_EXPOSURE_BIAS_VALUE, srational1Exif);
        tagInfoMap.put(TAG_MAX_APERTURE_VALUE, rational1Exif);
        tagInfoMap.put(TAG_SUBJECT_DISTANCE, rational1Exif);
        tagInfoMap.put(TAG_METERING_MODE, short1Exif);
        tagInfoMap.put(TAG_LIGHT_SOURCE, short1Exif);
        tagInfoMap.put(TAG_FLASH, short1Exif);
        tagInfoMap.put(TAG_FOCAL_LENGTH, rational1Exif);
        tagInfoMap.put(TAG_SUBJECT_AREA, shortAnyExif2);
        tagInfoMap.put(TAG_FLASH_ENERGY, rational1Exif);
        tagInfoMap.put(TAG_SPATIAL_FREQUENCY_RESPONSE, makerNoteAny);
        tagInfoMap.put(TAG_FOCAL_PLANE_X_RESOLUTION, rational1Exif);
        tagInfoMap.put(TAG_FOCAL_PLANE_Y_RESOLUTION, rational1Exif);
        tagInfoMap.put(TAG_FOCAL_PLANE_RESOLUTION_UNIT, short1Exif);
        tagInfoMap.put(TAG_SUBJECT_LOCATION, 2 | shortAnyExif);
        tagInfoMap.put(TAG_EXPOSURE_INDEX, rational1Exif);
        tagInfoMap.put(TAG_SENSING_METHOD, short1Exif);
        int undefined1Exif = undefinedAny | 1;
        tagInfoMap.put(TAG_FILE_SOURCE, undefined1Exif);
        tagInfoMap.put(TAG_SCENE_TYPE, undefined1Exif);
        tagInfoMap.put(TAG_CFA_PATTERN, makerNoteAny);
        tagInfoMap.put(TAG_CUSTOM_RENDERED, short1Exif);
        tagInfoMap.put(TAG_EXPOSURE_MODE, short1Exif);
        tagInfoMap.put(TAG_WHITE_BALANCE, short1Exif);
        tagInfoMap.put(TAG_DIGITAL_ZOOM_RATIO, rational1Exif);
        tagInfoMap.put(TAG_FOCAL_LENGTH_IN_35_MM_FILE, short1Exif);
        tagInfoMap.put(TAG_SCENE_CAPTURE_TYPE, short1Exif);
        tagInfoMap.put(TAG_GAIN_CONTROL, rational1Exif);
        tagInfoMap.put(TAG_CONTRAST, short1Exif);
        tagInfoMap.put(TAG_SATURATION, short1Exif);
        tagInfoMap.put(TAG_SHARPNESS, short1Exif);
        tagInfoMap.put(TAG_DEVICE_SETTING_DESCRIPTION, makerNoteAny);
        tagInfoMap.put(TAG_SUBJECT_DISTANCE_RANGE, short1Exif);
        tagInfoMap.put(TAG_INTEROPERABILITY_IFD, long1Exif);
        int ifd4Flags = getFlagsFromAllowedIfds(new int[] { 4 }) << 24;
        int byte4Gps = 65536 | ifd4Flags;
        tagInfoMap.put(TAG_GPS_VERSION_ID, byte4Gps | 4);
        int asciiAnyGps = ifd4Flags | 131072;
        int ascii2Gps = asciiAnyGps | 2;
        tagInfoMap.put(TAG_GPS_LATITUDE_REF, ascii2Gps);
        tagInfoMap.put(TAG_GPS_LONGITUDE_REF, ascii2Gps);
        int rational3Gps = ifd4Flags | 327680 | 3;
        tagInfoMap.put(TAG_GPS_LATITUDE, rational3Gps);
        tagInfoMap.put(TAG_GPS_LONGITUDE, rational3Gps);
        tagInfoMap.put(TAG_GPS_ALTITUDE_REF, byte4Gps | 1);
        int rationalAnyGps = 327680 | ifd4Flags;
        int rational1Gps = rationalAnyGps | 1;
        tagInfoMap.put(TAG_GPS_ALTITUDE, rational1Gps);
        tagInfoMap.put(TAG_GPS_TIME_STAMP, rationalAnyGps | 3);
        int asciiAnyGpsAlt = asciiAnyGps | 0;
        tagInfoMap.put(TAG_GPS_SATTELLITES, asciiAnyGpsAlt);
        tagInfoMap.put(TAG_GPS_STATUS, ascii2Gps);
        tagInfoMap.put(TAG_GPS_MEASURE_MODE, ascii2Gps);
        tagInfoMap.put(TAG_GPS_DOP, rational1Gps);
        tagInfoMap.put(TAG_GPS_SPEED_REF, ascii2Gps);
        tagInfoMap.put(TAG_GPS_SPEED, rational1Gps);
        tagInfoMap.put(TAG_GPS_TRACK_REF, ascii2Gps);
        tagInfoMap.put(TAG_GPS_TRACK, rational1Gps);
        tagInfoMap.put(TAG_GPS_IMG_DIRECTION_REF, ascii2Gps);
        tagInfoMap.put(TAG_GPS_IMG_DIRECTION, rational1Gps);
        tagInfoMap.put(TAG_GPS_MAP_DATUM, asciiAnyGpsAlt);
        tagInfoMap.put(TAG_GPS_DEST_LATITUDE_REF, ascii2Gps);
        tagInfoMap.put(TAG_GPS_DEST_LATITUDE, rational1Gps);
        tagInfoMap.put(TAG_GPS_DEST_BEARING_REF, ascii2Gps);
        tagInfoMap.put(TAG_GPS_DEST_BEARING, rational1Gps);
        tagInfoMap.put(TAG_GPS_DEST_DISTANCE_REF, ascii2Gps);
        tagInfoMap.put(TAG_GPS_DEST_DISTANCE, rational1Gps);
        int undefined0Gps = 458752 | ifd4Flags | 0;
        tagInfoMap.put(TAG_GPS_PROCESSING_METHOD, undefined0Gps);
        tagInfoMap.put(TAG_GPS_AREA_INFORMATION, undefined0Gps);
        tagInfoMap.put(TAG_GPS_DATE_STAMP, asciiAnyGps | 11);
        tagInfoMap.put(TAG_GPS_DIFFERENTIAL, ifd4Flags | 196608 | 11);
        tagInfoMap.put(TAG_INTEROPERABILITY_INDEX, (getFlagsFromAllowedIfds(new int[] { 3 }) << 24) | 131072 | 0);
    }

    protected static int[] getAllowedIfdsFromInfo(int tagInfo) {
        int allowedIfdFlags = getAllowedIfdFlagsFromInfo(tagInfo);
        int[] ifds = OplusIfdData.getIfds();
        ArrayList<Integer> allowedIfdList = new ArrayList<>();
        for (int i = 0; i < ifds.length; i++) {
            if (((allowedIfdFlags >> i) & 1) == 1) {
                allowedIfdList.add(Integer.valueOf(ifds[i]));
            }
        }
        if (allowedIfdList.isEmpty()) {
            return null;
        }
        int[] result = new int[allowedIfdList.size()];
        for (int j = 0; j < allowedIfdList.size(); j++) {
            result[j] = allowedIfdList.get(j).intValue();
        }
        return result;
    }

    protected static boolean isIfdAllowed(int tagInfo, int ifdId) {
        int[] ifds = OplusIfdData.getIfds();
        int allowedIfdFlags = getAllowedIfdFlagsFromInfo(tagInfo);
        for (int i = 0; i < ifds.length; i++) {
            if (ifdId == ifds[i] && ((allowedIfdFlags >> i) & 1) == 1) {
                return true;
            }
        }
        return false;
    }

    protected static int getFlagsFromAllowedIfds(int[] allowedIfds) {
        if (allowedIfds == null || allowedIfds.length == 0) {
            return 0;
        }
        int[] ifds = OplusIfdData.getIfds();
        int flags = 0;
        for (int i = 0; i < ifds.length; i++) {
            for (int allowedIfd : allowedIfds) {
                if (ifds[i] == allowedIfd) {
                    flags |= 1 << i;
                    break;
                }
            }
        }
        return flags;
    }
}
