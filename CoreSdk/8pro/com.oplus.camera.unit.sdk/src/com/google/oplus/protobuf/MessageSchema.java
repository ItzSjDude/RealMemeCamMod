package com.google.oplus.protobuf;

import com.google.oplus.protobuf.ArrayDecoders;
import com.google.oplus.protobuf.ByteString;
import com.google.oplus.protobuf.DescriptorProtos;
import com.google.oplus.protobuf.FieldSet;
import com.google.oplus.protobuf.Internal;
import com.google.oplus.protobuf.InvalidProtocolBufferException;
import com.google.oplus.protobuf.MapEntryLite;
import com.google.oplus.protobuf.WireFormat;
import com.google.oplus.protobuf.Writer;
import com.oplus.exif.OplusExifTag;
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.ocs.camera.common.util.ApsConstant;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class MessageSchema<T> implements Schema<T> {
    private static final int ENFORCE_UTF8_MASK = 536870912;
    private static final int FIELD_TYPE_MASK = 267386880;
    private static final int INTS_PER_FIELD = 3;
    private static final int NO_PRESENCE_SENTINEL = 1048575;
    private static final int OFFSET_BITS = 20;
    private static final int OFFSET_MASK = 1048575;
    static final int ONEOF_TYPE_OFFSET = 51;
    private static final int REQUIRED_MASK = 268435456;
    private final int[] buffer;
    private final int checkInitializedCount;
    private final MessageLite defaultInstance;
    private final ExtensionSchema<?> extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final ListFieldSchema listFieldSchema;
    private final boolean lite;
    private final MapFieldSchema mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final NewInstanceSchema newInstanceSchema;
    private final Object[] objects;
    private final boolean proto3;
    private final int repeatedFieldOffsetStart;
    private final UnknownFieldSchema<?, ?> unknownFieldSchema;
    private final boolean useCachedSizeField;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = UnsafeUtil.getUnsafe();

    private static boolean isEnforceUtf8(int i) {
        return (i & ENFORCE_UTF8_MASK) != 0;
    }

    private static boolean isRequired(int i) {
        return (i & REQUIRED_MASK) != 0;
    }

    private static long offset(int i) {
        return i & 1048575;
    }

    private static int type(int i) {
        return (i & FIELD_TYPE_MASK) >>> 20;
    }

    private MessageSchema(int[] iArr, Object[] objArr, int i, int i2, MessageLite messageLite, boolean z, boolean z2,
            int[] iArr2, int i3, int i4, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema,
            UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema,
            MapFieldSchema mapFieldSchema) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i;
        this.maxFieldNumber = i2;
        this.lite = messageLite instanceof GeneratedMessageLite;
        this.proto3 = z;
        this.hasExtensions = extensionSchema != null && extensionSchema.hasExtensions(messageLite);
        this.useCachedSizeField = z2;
        this.intArray = iArr2;
        this.checkInitializedCount = i3;
        this.repeatedFieldOffsetStart = i4;
        this.newInstanceSchema = newInstanceSchema;
        this.listFieldSchema = listFieldSchema;
        this.unknownFieldSchema = unknownFieldSchema;
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
        this.mapFieldSchema = mapFieldSchema;
    }

    static <T> MessageSchema<T> newSchema(Class<T> cls, MessageInfo messageInfo, NewInstanceSchema newInstanceSchema,
            ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema,
            ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        if (messageInfo instanceof RawMessageInfo) {
            return newSchemaForRawMessageInfo((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema,
                    unknownFieldSchema, extensionSchema, mapFieldSchema);
        }
        return newSchemaForMessageInfo((StructuralMessageInfo) messageInfo, newInstanceSchema, listFieldSchema,
                unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x024e */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0251 */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0269 */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026c */
    /* JADX WARN: Removed duplicated region for block: B:161:0x031a */
    /* JADX WARN: Removed duplicated region for block: B:162:0x031d */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0320 */
    /* JADX WARN: Removed duplicated region for block: B:179:0x036d */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    static <T> MessageSchema<T> newSchemaForRawMessageInfo(RawMessageInfo rawMessageInfo,
            NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema,
            UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema,
            MapFieldSchema mapFieldSchema) {
        int i;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int iCharAt4;
        int iCharAt5;
        int[] iArr;
        int i2;
        int i3;
        int i4;
        char cCharAt;
        int i5;
        char cCharAt2;
        int i6;
        char cCharAt3;
        int i7;
        char cCharAt4;
        int i8;
        char cCharAt5;
        int i9;
        char cCharAt6;
        int i10;
        char cCharAt7;
        int i11;
        char cCharAt8;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z;
        int i17;
        int iObjectFieldOffset;
        String str;
        boolean z2;
        int iObjectFieldOffset2;
        int i18;
        int i19;
        java.lang.reflect.Field fieldReflectField;
        char cCharAt9;
        int i20;
        int i21;
        Object obj;
        java.lang.reflect.Field fieldReflectField2;
        Object obj2;
        java.lang.reflect.Field fieldReflectField3;
        int i22;
        char cCharAt10;
        int i23;
        char cCharAt11;
        int i24;
        char cCharAt12;
        int i25;
        char cCharAt13;
        boolean z3 = rawMessageInfo.getSyntax() == ProtoSyntax.PROTO3;
        String stringInfo = rawMessageInfo.getStringInfo();
        int length = stringInfo.length();
        char c = 55296;
        if (stringInfo.charAt(0) >= 55296) {
            int i26 = 1;
            while (true) {
                i = i26 + 1;
                if (stringInfo.charAt(i26) < 55296) {
                    break;
                }
                i26 = i;
            }
        } else {
            i = 1;
        }
        int i27 = i + 1;
        int iCharAt6 = stringInfo.charAt(i);
        if (iCharAt6 >= 55296) {
            int i28 = iCharAt6 & 8191;
            int i29 = 13;
            while (true) {
                i25 = i27 + 1;
                cCharAt13 = stringInfo.charAt(i27);
                if (cCharAt13 < 55296) {
                    break;
                }
                i28 |= (cCharAt13 & 8191) << i29;
                i29 += 13;
                i27 = i25;
            }
            iCharAt6 = i28 | (cCharAt13 << i29);
            i27 = i25;
        }
        if (iCharAt6 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            iCharAt3 = 0;
            iCharAt4 = 0;
            iCharAt5 = 0;
            i2 = 0;
            iArr = EMPTY_INT_ARRAY;
            i3 = 0;
        } else {
            int i30 = i27 + 1;
            int iCharAt7 = stringInfo.charAt(i27);
            if (iCharAt7 >= 55296) {
                int i31 = iCharAt7 & 8191;
                int i32 = 13;
                while (true) {
                    i11 = i30 + 1;
                    cCharAt8 = stringInfo.charAt(i30);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i31 |= (cCharAt8 & 8191) << i32;
                    i32 += 13;
                    i30 = i11;
                }
                iCharAt7 = i31 | (cCharAt8 << i32);
                i30 = i11;
            }
            int i33 = i30 + 1;
            int iCharAt8 = stringInfo.charAt(i30);
            if (iCharAt8 >= 55296) {
                int i34 = iCharAt8 & 8191;
                int i35 = 13;
                while (true) {
                    i10 = i33 + 1;
                    cCharAt7 = stringInfo.charAt(i33);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i34 |= (cCharAt7 & 8191) << i35;
                    i35 += 13;
                    i33 = i10;
                }
                iCharAt8 = i34 | (cCharAt7 << i35);
                i33 = i10;
            }
            int i36 = i33 + 1;
            iCharAt = stringInfo.charAt(i33);
            if (iCharAt >= 55296) {
                int i37 = iCharAt & 8191;
                int i38 = 13;
                while (true) {
                    i9 = i36 + 1;
                    cCharAt6 = stringInfo.charAt(i36);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt6 & 8191) << i38;
                    i38 += 13;
                    i36 = i9;
                }
                iCharAt = i37 | (cCharAt6 << i38);
                i36 = i9;
            }
            int i39 = i36 + 1;
            iCharAt2 = stringInfo.charAt(i36);
            if (iCharAt2 >= 55296) {
                int i40 = iCharAt2 & 8191;
                int i41 = 13;
                while (true) {
                    i8 = i39 + 1;
                    cCharAt5 = stringInfo.charAt(i39);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt5 & 8191) << i41;
                    i41 += 13;
                    i39 = i8;
                }
                iCharAt2 = i40 | (cCharAt5 << i41);
                i39 = i8;
            }
            int i42 = i39 + 1;
            iCharAt3 = stringInfo.charAt(i39);
            if (iCharAt3 >= 55296) {
                int i43 = iCharAt3 & 8191;
                int i44 = 13;
                while (true) {
                    i7 = i42 + 1;
                    cCharAt4 = stringInfo.charAt(i42);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt4 & 8191) << i44;
                    i44 += 13;
                    i42 = i7;
                }
                iCharAt3 = i43 | (cCharAt4 << i44);
                i42 = i7;
            }
            int i45 = i42 + 1;
            iCharAt4 = stringInfo.charAt(i42);
            if (iCharAt4 >= 55296) {
                int i46 = iCharAt4 & 8191;
                int i47 = 13;
                while (true) {
                    i6 = i45 + 1;
                    cCharAt3 = stringInfo.charAt(i45);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt3 & 8191) << i47;
                    i47 += 13;
                    i45 = i6;
                }
                iCharAt4 = i46 | (cCharAt3 << i47);
                i45 = i6;
            }
            int i48 = i45 + 1;
            int iCharAt9 = stringInfo.charAt(i45);
            if (iCharAt9 >= 55296) {
                int i49 = iCharAt9 & 8191;
                int i50 = 13;
                while (true) {
                    i5 = i48 + 1;
                    cCharAt2 = stringInfo.charAt(i48);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt2 & 8191) << i50;
                    i50 += 13;
                    i48 = i5;
                }
                iCharAt9 = i49 | (cCharAt2 << i50);
                i48 = i5;
            }
            int i51 = i48 + 1;
            iCharAt5 = stringInfo.charAt(i48);
            if (iCharAt5 >= 55296) {
                int i52 = iCharAt5 & 8191;
                int i53 = 13;
                while (true) {
                    i4 = i51 + 1;
                    cCharAt = stringInfo.charAt(i51);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i52 |= (cCharAt & 8191) << i53;
                    i53 += 13;
                    i51 = i4;
                }
                iCharAt5 = i52 | (cCharAt << i53);
                i51 = i4;
            }
            iArr = new int[iCharAt5 + iCharAt4 + iCharAt9];
            i2 = (iCharAt7 * 2) + iCharAt8;
            i3 = iCharAt7;
            i27 = i51;
        }
        Unsafe unsafe = UNSAFE;
        Object[] objects = rawMessageInfo.getObjects();
        Class<?> cls = rawMessageInfo.getDefaultInstance().getClass();
        int[] iArr2 = new int[iCharAt3 * 3];
        Object[] objArr = new Object[iCharAt3 * 2];
        int i54 = iCharAt5 + iCharAt4;
        int i55 = iCharAt5;
        int i56 = i54;
        int i57 = 0;
        int i58 = 0;
        while (i27 < length) {
            int i59 = i27 + 1;
            int iCharAt10 = stringInfo.charAt(i27);
            if (iCharAt10 >= c) {
                int i60 = iCharAt10 & 8191;
                int i61 = i59;
                int i62 = 13;
                while (true) {
                    i24 = i61 + 1;
                    cCharAt12 = stringInfo.charAt(i61);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i60 |= (cCharAt12 & 8191) << i62;
                    i62 += 13;
                    i61 = i24;
                }
                iCharAt10 = i60 | (cCharAt12 << i62);
                i12 = i24;
            } else {
                i12 = i59;
            }
            int i63 = i12 + 1;
            int iCharAt11 = stringInfo.charAt(i12);
            if (iCharAt11 >= c) {
                int i64 = iCharAt11 & 8191;
                int i65 = i63;
                int i66 = 13;
                while (true) {
                    i23 = i65 + 1;
                    cCharAt11 = stringInfo.charAt(i65);
                    i13 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i64 |= (cCharAt11 & 8191) << i66;
                    i66 += 13;
                    i65 = i23;
                    length = i13;
                }
                iCharAt11 = i64 | (cCharAt11 << i66);
                i14 = i23;
            } else {
                i13 = length;
                i14 = i63;
            }
            int i67 = iCharAt11 & 255;
            int i68 = iCharAt5;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i57] = i58;
                i57++;
            }
            int i69 = i57;
            if (i67 >= 51) {
                int i70 = i14 + 1;
                int iCharAt12 = stringInfo.charAt(i14);
                char c2 = 55296;
                if (iCharAt12 >= 55296) {
                    int i71 = iCharAt12 & 8191;
                    int i72 = 13;
                    while (true) {
                        i22 = i70 + 1;
                        cCharAt10 = stringInfo.charAt(i70);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i71 |= (cCharAt10 & 8191) << i72;
                        i72 += 13;
                        i70 = i22;
                        c2 = 55296;
                    }
                    iCharAt12 = i71 | (cCharAt10 << i72);
                    i70 = i22;
                }
                int i73 = i67 - 51;
                int i74 = i70;
                if (i73 == 9 || i73 == 17) {
                    i21 = i2 + 1;
                    objArr[((i58 / 3) * 2) + 1] = objects[i2];
                } else {
                    if (i73 == 12 && !z3) {
                        i21 = i2 + 1;
                        objArr[((i58 / 3) * 2) + 1] = objects[i2];
                    }
                    int i75 = iCharAt12 * 2;
                    obj = objects[i75];
                    if (!(obj instanceof java.lang.reflect.Field)) {
                        fieldReflectField2 = (java.lang.reflect.Field) obj;
                    } else {
                        fieldReflectField2 = reflectField(cls, (String) obj);
                        objects[i75] = fieldReflectField2;
                    }
                    i15 = iCharAt;
                    i16 = iCharAt2;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                    int i76 = i75 + 1;
                    obj2 = objects[i76];
                    if (!(obj2 instanceof java.lang.reflect.Field)) {
                        fieldReflectField3 = (java.lang.reflect.Field) obj2;
                    } else {
                        fieldReflectField3 = reflectField(cls, (String) obj2);
                        objects[i76] = fieldReflectField3;
                    }
                    str = stringInfo;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                    z2 = z3;
                    i18 = i74;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i19 = 0;
                }
                i2 = i21;
                int i752 = iCharAt12 * 2;
                obj = objects[i752];
                if (!(obj instanceof java.lang.reflect.Field)) {
                }
                i15 = iCharAt;
                i16 = iCharAt2;
                int iObjectFieldOffset32 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                int i762 = i752 + 1;
                obj2 = objects[i762];
                if (!(obj2 instanceof java.lang.reflect.Field)) {
                }
                str = stringInfo;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                z2 = z3;
                i18 = i74;
                iObjectFieldOffset = iObjectFieldOffset32;
                i19 = 0;
            } else {
                i15 = iCharAt;
                i16 = iCharAt2;
                int i77 = i2 + 1;
                java.lang.reflect.Field fieldReflectField4 = reflectField(cls, (String) objects[i2]);
                if (i67 == 9 || i67 == 17) {
                    z = true;
                    objArr[((i58 / 3) * 2) + 1] = fieldReflectField4.getType();
                } else {
                    if (i67 == 27 || i67 == 49) {
                        z = true;
                        i20 = i77 + 1;
                        objArr[((i58 / 3) * 2) + 1] = objects[i77];
                    } else {
                        if (i67 == 12 || i67 == 30 || i67 == 44) {
                            if (!z3) {
                                z = true;
                                i20 = i77 + 1;
                                objArr[((i58 / 3) * 2) + 1] = objects[i77];
                            }
                        } else if (i67 == 50) {
                            int i78 = i55 + 1;
                            iArr[i55] = i58;
                            int i79 = (i58 / 3) * 2;
                            int i80 = i77 + 1;
                            objArr[i79] = objects[i77];
                            if ((iCharAt11 & OplusExifTag.EXIF_TAG_NIGHT_SCENE) != 0) {
                                i77 = i80 + 1;
                                objArr[i79 + 1] = objects[i80];
                                i55 = i78;
                            } else {
                                i55 = i78;
                                i17 = i80;
                                z = true;
                                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                                int i81 = i17;
                                if (!((iCharAt11 & 4096) == 4096 ? z : false) || i67 > 17) {
                                    str = stringInfo;
                                    z2 = z3;
                                    iObjectFieldOffset2 = 1048575;
                                    i18 = i14;
                                    i19 = 0;
                                } else {
                                    int i82 = i14 + 1;
                                    int iCharAt13 = stringInfo.charAt(i14);
                                    if (iCharAt13 >= 55296) {
                                        int i83 = iCharAt13 & 8191;
                                        int i84 = 13;
                                        while (true) {
                                            i18 = i82 + 1;
                                            cCharAt9 = stringInfo.charAt(i82);
                                            if (cCharAt9 < 55296) {
                                                break;
                                            }
                                            i83 |= (cCharAt9 & 8191) << i84;
                                            i84 += 13;
                                            i82 = i18;
                                        }
                                        iCharAt13 = i83 | (cCharAt9 << i84);
                                    } else {
                                        i18 = i82;
                                    }
                                    int i85 = (i3 * 2) + (iCharAt13 / 32);
                                    Object obj3 = objects[i85];
                                    str = stringInfo;
                                    if (obj3 instanceof java.lang.reflect.Field) {
                                        fieldReflectField = (java.lang.reflect.Field) obj3;
                                    } else {
                                        fieldReflectField = reflectField(cls, (String) obj3);
                                        objects[i85] = fieldReflectField;
                                    }
                                    z2 = z3;
                                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField);
                                    i19 = iCharAt13 % 32;
                                }
                                if (i67 >= 18 && i67 <= 49) {
                                    iArr[i56] = iObjectFieldOffset;
                                    i56++;
                                }
                                i2 = i81;
                            }
                        }
                        z = true;
                    }
                    i17 = i20;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                    int i812 = i17;
                    if ((iCharAt11 & 4096) == 4096 ? z : false) {
                        str = stringInfo;
                        z2 = z3;
                        iObjectFieldOffset2 = 1048575;
                        i18 = i14;
                        i19 = 0;
                        if (i67 >= 18) {
                            iArr[i56] = iObjectFieldOffset;
                            i56++;
                        }
                        i2 = i812;
                    }
                }
                i17 = i77;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                int i8122 = i17;
                if ((iCharAt11 & 4096) == 4096 ? z : false) {
                }
            }
            int i86 = i58 + 1;
            iArr2[i58] = iCharAt10;
            int i87 = i86 + 1;
            iArr2[i86] = ((iCharAt11 & 256) != 0 ? REQUIRED_MASK : 0) | ((iCharAt11 & 512) != 0 ? ENFORCE_UTF8_MASK : 0)
                    | (i67 << 20) | iObjectFieldOffset;
            i58 = i87 + 1;
            iArr2[i87] = (i19 << 20) | iObjectFieldOffset2;
            z3 = z2;
            iCharAt = i15;
            iCharAt5 = i68;
            length = i13;
            i27 = i18;
            i57 = i69;
            stringInfo = str;
            iCharAt2 = i16;
            c = 55296;
        }
        return new MessageSchema<>(iArr2, objArr, iCharAt, iCharAt2, rawMessageInfo.getDefaultInstance(), z3, false,
                iArr, iCharAt5, i54, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema,
                mapFieldSchema);
    }

    private static java.lang.reflect.Field reflectField(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            java.lang.reflect.Field[] declaredFields = cls.getDeclaredFields();
            for (java.lang.reflect.Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are "
                    + Arrays.toString(declaredFields));
        }
    }

    static <T> MessageSchema<T> newSchemaForMessageInfo(StructuralMessageInfo structuralMessageInfo,
            NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema,
            UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema,
            MapFieldSchema mapFieldSchema) {
        int fieldNumber;
        int fieldNumber2;
        int i;
        boolean z = structuralMessageInfo.getSyntax() == ProtoSyntax.PROTO3;
        FieldInfo[] fields = structuralMessageInfo.getFields();
        if (fields.length == 0) {
            fieldNumber = 0;
            fieldNumber2 = 0;
        } else {
            fieldNumber = fields[0].getFieldNumber();
            fieldNumber2 = fields[fields.length - 1].getFieldNumber();
        }
        int length = fields.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i2 = 0;
        int i3 = 0;
        for (FieldInfo fieldInfo : fields) {
            if (fieldInfo.getType() == FieldType.MAP) {
                i2++;
            } else if (fieldInfo.getType().id() >= 18 && fieldInfo.getType().id() <= 49) {
                i3++;
            }
        }
        int[] iArr2 = i2 > 0 ? new int[i2] : null;
        int[] iArr3 = i3 > 0 ? new int[i3] : null;
        int[] checkInitialized = structuralMessageInfo.getCheckInitialized();
        if (checkInitialized == null) {
            checkInitialized = EMPTY_INT_ARRAY;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i4 < fields.length) {
            FieldInfo fieldInfo2 = fields[i4];
            int fieldNumber3 = fieldInfo2.getFieldNumber();
            storeFieldData(fieldInfo2, iArr, i5, objArr);
            if (i6 < checkInitialized.length && checkInitialized[i6] == fieldNumber3) {
                checkInitialized[i6] = i5;
                i6++;
            }
            if (fieldInfo2.getType() == FieldType.MAP) {
                iArr2[i7] = i5;
                i7++;
            } else {
                if (fieldInfo2.getType().id() >= 18 && fieldInfo2.getType().id() <= 49) {
                    i = i5;
                    iArr3[i8] = (int) UnsafeUtil.objectFieldOffset(fieldInfo2.getField());
                    i8++;
                }
                i4++;
                i5 = i + 3;
            }
            i = i5;
            i4++;
            i5 = i + 3;
        }
        if (iArr2 == null) {
            iArr2 = EMPTY_INT_ARRAY;
        }
        if (iArr3 == null) {
            iArr3 = EMPTY_INT_ARRAY;
        }
        int[] iArr4 = new int[checkInitialized.length + iArr2.length + iArr3.length];
        System.arraycopy(checkInitialized, 0, iArr4, 0, checkInitialized.length);
        System.arraycopy(iArr2, 0, iArr4, checkInitialized.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, checkInitialized.length + iArr2.length, iArr3.length);
        return new MessageSchema<>(iArr, objArr, fieldNumber, fieldNumber2, structuralMessageInfo.getDefaultInstance(),
                z, true, iArr4, checkInitialized.length, checkInitialized.length + iArr2.length, newInstanceSchema,
                listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007a */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007d */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0084 */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00be */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    private static void storeFieldData(FieldInfo fieldInfo, int[] iArr, int i, Object[] objArr) {
        int iObjectFieldOffset;
        int iId;
        long jObjectFieldOffset;
        int iObjectFieldOffset2;
        int iNumberOfTrailingZeros;
        OneofInfo oneof = fieldInfo.getOneof();
        if (oneof != null) {
            iId = fieldInfo.getType().id() + 51;
            iObjectFieldOffset = (int) UnsafeUtil.objectFieldOffset(oneof.getValueField());
            jObjectFieldOffset = UnsafeUtil.objectFieldOffset(oneof.getCaseField());
        } else {
            FieldType type = fieldInfo.getType();
            iObjectFieldOffset = (int) UnsafeUtil.objectFieldOffset(fieldInfo.getField());
            iId = type.id();
            if (!type.isList() && !type.isMap()) {
                java.lang.reflect.Field presenceField = fieldInfo.getPresenceField();
                iObjectFieldOffset2 = presenceField == null ? 1048575
                        : (int) UnsafeUtil.objectFieldOffset(presenceField);
                iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(fieldInfo.getPresenceMask());
            } else if (fieldInfo.getCachedSizeField() == null) {
                iObjectFieldOffset2 = 0;
                iNumberOfTrailingZeros = 0;
            } else {
                jObjectFieldOffset = UnsafeUtil.objectFieldOffset(fieldInfo.getCachedSizeField());
            }
            iArr[i] = fieldInfo.getFieldNumber();
            iArr[i + 1] = (fieldInfo.isRequired() ? REQUIRED_MASK : 0)
                    | (!fieldInfo.isEnforceUtf8() ? ENFORCE_UTF8_MASK : 0) | (iId << 20) | iObjectFieldOffset;
            iArr[i + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
            Class<?> messageFieldClass = fieldInfo.getMessageFieldClass();
            if (fieldInfo.getMapDefaultEntry() != null) {
                if (messageFieldClass != null) {
                    objArr[((i / 3) * 2) + 1] = messageFieldClass;
                    return;
                } else {
                    if (fieldInfo.getEnumVerifier() != null) {
                        objArr[((i / 3) * 2) + 1] = fieldInfo.getEnumVerifier();
                        return;
                    }
                    return;
                }
            }
            int i2 = (i / 3) * 2;
            objArr[i2] = fieldInfo.getMapDefaultEntry();
            if (messageFieldClass != null) {
                objArr[i2 + 1] = messageFieldClass;
                return;
            } else {
                if (fieldInfo.getEnumVerifier() != null) {
                    objArr[i2 + 1] = fieldInfo.getEnumVerifier();
                    return;
                }
                return;
            }
        }
        iObjectFieldOffset2 = (int) jObjectFieldOffset;
        iNumberOfTrailingZeros = 0;
        iArr[i] = fieldInfo.getFieldNumber();
        if (!fieldInfo.isEnforceUtf8()) {
        }
        iArr[i + 1] = (fieldInfo.isRequired() ? REQUIRED_MASK : 0)
                | (!fieldInfo.isEnforceUtf8() ? ENFORCE_UTF8_MASK : 0) | (iId << 20) | iObjectFieldOffset;
        iArr[i + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
        Class<?> messageFieldClass2 = fieldInfo.getMessageFieldClass();
        if (fieldInfo.getMapDefaultEntry() != null) {
        }
    }

    @Override // com.google.oplus.protobuf.Schema
    public T newInstance() {
        return (T) this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    @Override // com.google.oplus.protobuf.Schema
    public boolean equals(T t, T t2) {
        int length = this.buffer.length;
        for (int i = 0; i < length; i += 3) {
            if (!equals(t, t2, i)) {
                return false;
            }
        }
        if (!this.unknownFieldSchema.getFromMessage(t).equals(this.unknownFieldSchema.getFromMessage(t2))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(t).equals(this.extensionSchema.getExtensions(t2));
        }
        return true;
    }

    private boolean equals(T t, T t2, int i) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                if (arePresentForEquals(t, t2, i) && Double.doubleToLongBits(UnsafeUtil.getDouble(t, jOffset)) == Double
                        .doubleToLongBits(UnsafeUtil.getDouble(t2, jOffset))) {
                    break;
                }
                break;
            case 1:
                if (arePresentForEquals(t, t2, i) && Float.floatToIntBits(UnsafeUtil.getFloat(t, jOffset)) == Float
                        .floatToIntBits(UnsafeUtil.getFloat(t2, jOffset))) {
                    break;
                }
                break;
            case 2:
                if (arePresentForEquals(t, t2, i)
                        && UnsafeUtil.getLong(t, jOffset) == UnsafeUtil.getLong(t2, jOffset)) {
                    break;
                }
                break;
            case 3:
                if (arePresentForEquals(t, t2, i)
                        && UnsafeUtil.getLong(t, jOffset) == UnsafeUtil.getLong(t2, jOffset)) {
                    break;
                }
                break;
            case 4:
                if (arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, jOffset) == UnsafeUtil.getInt(t2, jOffset)) {
                    break;
                }
                break;
            case 5:
                if (arePresentForEquals(t, t2, i)
                        && UnsafeUtil.getLong(t, jOffset) == UnsafeUtil.getLong(t2, jOffset)) {
                    break;
                }
                break;
            case 6:
                if (arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, jOffset) == UnsafeUtil.getInt(t2, jOffset)) {
                    break;
                }
                break;
            case 7:
                if (arePresentForEquals(t, t2, i)
                        && UnsafeUtil.getBoolean(t, jOffset) == UnsafeUtil.getBoolean(t2, jOffset)) {
                    break;
                }
                break;
            case 8:
                if (arePresentForEquals(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, jOffset), UnsafeUtil.getObject(t2, jOffset))) {
                    break;
                }
                break;
            case 9:
                if (arePresentForEquals(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, jOffset), UnsafeUtil.getObject(t2, jOffset))) {
                    break;
                }
                break;
            case 10:
                if (arePresentForEquals(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, jOffset), UnsafeUtil.getObject(t2, jOffset))) {
                    break;
                }
                break;
            case 11:
                if (arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, jOffset) == UnsafeUtil.getInt(t2, jOffset)) {
                    break;
                }
                break;
            case 12:
                if (arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, jOffset) == UnsafeUtil.getInt(t2, jOffset)) {
                    break;
                }
                break;
            case 13:
                if (arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, jOffset) == UnsafeUtil.getInt(t2, jOffset)) {
                    break;
                }
                break;
            case 14:
                if (arePresentForEquals(t, t2, i)
                        && UnsafeUtil.getLong(t, jOffset) == UnsafeUtil.getLong(t2, jOffset)) {
                    break;
                }
                break;
            case 15:
                if (arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, jOffset) == UnsafeUtil.getInt(t2, jOffset)) {
                    break;
                }
                break;
            case 16:
                if (arePresentForEquals(t, t2, i)
                        && UnsafeUtil.getLong(t, jOffset) == UnsafeUtil.getLong(t2, jOffset)) {
                    break;
                }
                break;
            case 17:
                if (arePresentForEquals(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, jOffset), UnsafeUtil.getObject(t2, jOffset))) {
                    break;
                }
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                if (isOneofCaseEqual(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, jOffset), UnsafeUtil.getObject(t2, jOffset))) {
                    break;
                }
                break;
        }
        return true;
    }

    @Override // com.google.oplus.protobuf.Schema
    public int hashCode(T t) {
        int i;
        int iHashLong;
        int length = this.buffer.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i3);
            int iNumberAt = numberAt(i3);
            long jOffset = offset(iTypeAndOffsetAt);
            int iHashCode = 37;
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(Double.doubleToLongBits(UnsafeUtil.getDouble(t, jOffset)));
                    i2 = i + iHashLong;
                    break;
                case 1:
                    i = i2 * 53;
                    iHashLong = Float.floatToIntBits(UnsafeUtil.getFloat(t, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 2:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 3:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 4:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(t, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 5:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 6:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(t, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 7:
                    i = i2 * 53;
                    iHashLong = Internal.hashBoolean(UnsafeUtil.getBoolean(t, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 8:
                    i = i2 * 53;
                    iHashLong = ((String) UnsafeUtil.getObject(t, jOffset)).hashCode();
                    i2 = i + iHashLong;
                    break;
                case 9:
                    Object object = UnsafeUtil.getObject(t, jOffset);
                    if (object != null) {
                        iHashCode = object.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getObject(t, jOffset).hashCode();
                    i2 = i + iHashLong;
                    break;
                case 11:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(t, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 12:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(t, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 13:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(t, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 14:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 15:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getInt(t, jOffset);
                    i2 = i + iHashLong;
                    break;
                case 16:
                    i = i2 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t, jOffset));
                    i2 = i + iHashLong;
                    break;
                case 17:
                    Object object2 = UnsafeUtil.getObject(t, jOffset);
                    if (object2 != null) {
                        iHashCode = object2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                case 26:
                case 27:
                case 28:
                case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                case 40:
                case 41:
                case 42:
                case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                case 45:
                case 46:
                case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getObject(t, jOffset).hashCode();
                    i2 = i + iHashLong;
                    break;
                case 50:
                    i = i2 * 53;
                    iHashLong = UnsafeUtil.getObject(t, jOffset).hashCode();
                    i2 = i + iHashLong;
                    break;
                case 51:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(Double.doubleToLongBits(oneofDoubleAt(t, jOffset)));
                        i2 = i + iHashLong;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Float.floatToIntBits(oneofFloatAt(t, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(t, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(t, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashBoolean(oneofBooleanAt(t, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = ((String) UnsafeUtil.getObject(t, jOffset)).hashCode();
                        i2 = i + iHashLong;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = UnsafeUtil.getObject(t, jOffset).hashCode();
                        i2 = i + iHashLong;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = UnsafeUtil.getObject(t, jOffset).hashCode();
                        i2 = i + iHashLong;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(t, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(t, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(t, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = oneofIntAt(t, jOffset);
                        i2 = i + iHashLong;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t, jOffset));
                        i2 = i + iHashLong;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t, iNumberAt, i3)) {
                        i = i2 * 53;
                        iHashLong = UnsafeUtil.getObject(t, jOffset).hashCode();
                        i2 = i + iHashLong;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.unknownFieldSchema.getFromMessage(t).hashCode();
        return this.hasExtensions ? (iHashCode2 * 53) + this.extensionSchema.getExtensions(t).hashCode() : iHashCode2;
    }

    @Override // com.google.oplus.protobuf.Schema
    public void mergeFrom(T t, T t2) {
        t2.getClass();
        for (int i = 0; i < this.buffer.length; i += 3) {
            mergeSingleField(t, t2, i);
        }
        SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, t, t2);
        if (this.hasExtensions) {
            SchemaUtil.mergeExtensions(this.extensionSchema, t, t2);
        }
    }

    private void mergeSingleField(T t, T t2, int i) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i);
        long jOffset = offset(iTypeAndOffsetAt);
        int iNumberAt = numberAt(i);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putDouble(t, jOffset, UnsafeUtil.getDouble(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 1:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putFloat(t, jOffset, UnsafeUtil.getFloat(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 2:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, jOffset, UnsafeUtil.getLong(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 3:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, jOffset, UnsafeUtil.getLong(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 4:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, jOffset, UnsafeUtil.getInt(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 5:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, jOffset, UnsafeUtil.getLong(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 6:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, jOffset, UnsafeUtil.getInt(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 7:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putBoolean(t, jOffset, UnsafeUtil.getBoolean(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 8:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putObject(t, jOffset, UnsafeUtil.getObject(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 9:
                mergeMessage(t, t2, i);
                break;
            case 10:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putObject(t, jOffset, UnsafeUtil.getObject(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 11:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, jOffset, UnsafeUtil.getInt(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 12:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, jOffset, UnsafeUtil.getInt(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 13:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, jOffset, UnsafeUtil.getInt(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 14:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, jOffset, UnsafeUtil.getLong(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 15:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, jOffset, UnsafeUtil.getInt(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 16:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, jOffset, UnsafeUtil.getLong(t2, jOffset));
                    setFieldPresent(t, i);
                }
                break;
            case 17:
                mergeMessage(t, t2, i);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
            case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
            case 26:
            case 27:
            case 28:
            case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
            case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
            case 40:
            case 41:
            case 42:
            case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
            case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
            case 45:
            case 46:
            case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
            case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
            case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                this.listFieldSchema.mergeListsAt(t, t2, jOffset);
                break;
            case 50:
                SchemaUtil.mergeMap(this.mapFieldSchema, t, t2, jOffset);
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (isOneofPresent(t2, iNumberAt, i)) {
                    UnsafeUtil.putObject(t, jOffset, UnsafeUtil.getObject(t2, jOffset));
                    setOneofPresent(t, iNumberAt, i);
                }
                break;
            case 60:
                mergeOneofMessage(t, t2, i);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (isOneofPresent(t2, iNumberAt, i)) {
                    UnsafeUtil.putObject(t, jOffset, UnsafeUtil.getObject(t2, jOffset));
                    setOneofPresent(t, iNumberAt, i);
                }
                break;
            case 68:
                mergeOneofMessage(t, t2, i);
                break;
        }
    }

    private void mergeMessage(T t, T t2, int i) {
        long jOffset = offset(typeAndOffsetAt(i));
        if (isFieldPresent(t2, i)) {
            Object object = UnsafeUtil.getObject(t, jOffset);
            Object object2 = UnsafeUtil.getObject(t2, jOffset);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(t, jOffset, Internal.mergeMessage(object, object2));
                setFieldPresent(t, i);
            } else if (object2 != null) {
                UnsafeUtil.putObject(t, jOffset, object2);
                setFieldPresent(t, i);
            }
        }
    }

    private void mergeOneofMessage(T t, T t2, int i) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i);
        int iNumberAt = numberAt(i);
        long jOffset = offset(iTypeAndOffsetAt);
        if (isOneofPresent(t2, iNumberAt, i)) {
            Object object = isOneofPresent(t, iNumberAt, i) ? UnsafeUtil.getObject(t, jOffset) : null;
            Object object2 = UnsafeUtil.getObject(t2, jOffset);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(t, jOffset, Internal.mergeMessage(object, object2));
                setOneofPresent(t, iNumberAt, i);
            } else if (object2 != null) {
                UnsafeUtil.putObject(t, jOffset, object2);
                setOneofPresent(t, iNumberAt, i);
            }
        }
    }

    @Override // com.google.oplus.protobuf.Schema
    public int getSerializedSize(T t) {
        return this.proto3 ? getSerializedSizeProto3(t) : getSerializedSizeProto2(t);
    }

    /*
     * JADX DEBUG: Type inference failed for r2v1. Raw type applied. Possible types:
     * com.google.oplus.protobuf.UnknownFieldSchema<?, ?>,
     * com.google.oplus.protobuf.UnknownFieldSchema<UT, UB>
     */
    /*
     * JADX WARN: Can't fix incorrect switch cases order, some code will duplicate
     */
    private int getSerializedSizeProto2(T t) {
        int i;
        int i2;
        int iComputeDoubleSize;
        int iComputeBoolSize;
        int iComputeSFixed32Size;
        boolean z;
        int iComputeSizeFixed32List;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i5 < this.buffer.length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i5);
            int iNumberAt = numberAt(i5);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                i = this.buffer[i5 + 2];
                int i8 = i & i3;
                i2 = 1 << (i >>> 20);
                if (i8 != i4) {
                    i7 = unsafe.getInt(t, i8);
                    i4 = i8;
                }
            } else {
                i = (!this.useCachedSizeField || iType < FieldType.DOUBLE_LIST_PACKED.id()
                        || iType > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i5 + 2] & i3;
                i2 = 0;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    if ((i7 & i2) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if ((i7 & i2) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if ((i7 & i2) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, unsafe.getLong(t, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if ((i7 & i2) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, unsafe.getLong(t, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if ((i7 & i2) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, unsafe.getInt(t, jOffset));
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if ((i7 & i2) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if ((i7 & i2) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i6 += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if ((i7 & i2) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 8:
                    if ((i7 & i2) != 0) {
                        Object object = unsafe.getObject(t, jOffset);
                        if (object instanceof ByteString) {
                            iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object);
                        } else {
                            iComputeBoolSize = CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        }
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 9:
                    if ((i7 & i2) != 0) {
                        iComputeBoolSize = SchemaUtil.computeSizeMessage(iNumberAt, unsafe.getObject(t, jOffset),
                                getMessageFieldSchema(i5));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 10:
                    if ((i7 & i2) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt,
                                (ByteString) unsafe.getObject(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 11:
                    if ((i7 & i2) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, unsafe.getInt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 12:
                    if ((i7 & i2) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, unsafe.getInt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 13:
                    if ((i7 & i2) != 0) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 14:
                    if ((i7 & i2) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 15:
                    if ((i7 & i2) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, unsafe.getInt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 16:
                    if ((i7 & i2) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, unsafe.getLong(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 17:
                    if ((i7 & i2) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt,
                                (MessageLite) unsafe.getObject(t, jOffset), (Schema) getMessageFieldSchema(i5));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 18:
                    iComputeBoolSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t, jOffset),
                            false);
                    i6 += iComputeBoolSize;
                    break;
                case 19:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeFixed32List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 20:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeInt64List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 21:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeUInt64List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 22:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeInt32List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 23:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeFixed64List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeFixed32List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeBoolList(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 26:
                    iComputeBoolSize = SchemaUtil.computeSizeStringList(iNumberAt, listAt(t, jOffset));
                    i6 += iComputeBoolSize;
                    break;
                case 27:
                    iComputeBoolSize = SchemaUtil.computeSizeMessageList(iNumberAt, listAt(t, jOffset),
                            getMessageFieldSchema(i5));
                    i6 += iComputeBoolSize;
                    break;
                case 28:
                    iComputeBoolSize = SchemaUtil.computeSizeByteStringList(iNumberAt,
                            listAt(t, jOffset));
                    i6 += iComputeBoolSize;
                    break;
                case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                    iComputeBoolSize = SchemaUtil.computeSizeUInt32List(iNumberAt, listAt(t, jOffset),
                            false);
                    i6 += iComputeBoolSize;
                    break;
                case 30:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeEnumList(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 31:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeFixed32List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 32:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeFixed64List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 33:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeSInt32List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 34:
                    z = false;
                    iComputeSizeFixed32List = SchemaUtil.computeSizeSInt64List(iNumberAt,
                            listAt(t, jOffset), false);
                    i6 += iComputeSizeFixed32List;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeInt64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeUInt64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeInt32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeBoolListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeUInt32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeEnumListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeSInt32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeSInt64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                    iComputeBoolSize = SchemaUtil.computeSizeGroupList(iNumberAt, listAt(t, jOffset),
                            getMessageFieldSchema(i5));
                    i6 += iComputeBoolSize;
                    break;
                case 50:
                    iComputeBoolSize = this.mapFieldSchema.getSerializedSize(iNumberAt, unsafe.getObject(t, jOffset),
                            getMapFieldDefaultEntry(i5));
                    i6 += iComputeBoolSize;
                    break;
                case 51:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeSFixed32Size = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        Object object2 = unsafe.getObject(t, jOffset);
                        if (object2 instanceof ByteString) {
                            iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2);
                        } else {
                            iComputeBoolSize = CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        }
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = SchemaUtil.computeSizeMessage(iNumberAt, unsafe.getObject(t, jOffset),
                                getMessageFieldSchema(i5));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt,
                                (ByteString) unsafe.getObject(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i6 += iComputeSFixed32Size;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(t, jOffset));
                        i6 += iComputeBoolSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t, iNumberAt, i5)) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt,
                                (MessageLite) unsafe.getObject(t, jOffset), (Schema) getMessageFieldSchema(i5));
                        i6 += iComputeBoolSize;
                    }
                    break;
            }
            i5 += 3;
            i3 = 1048575;
        }
        int unknownFieldsSerializedSize = i6 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t);
        return this.hasExtensions
                ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(t).getSerializedSize()
                : unknownFieldsSerializedSize;
    }

    /*
     * JADX DEBUG: Type inference failed for r2v1. Raw type applied. Possible types:
     * com.google.oplus.protobuf.UnknownFieldSchema<?, ?>,
     * com.google.oplus.protobuf.UnknownFieldSchema<UT, UB>
     */
    private int getSerializedSizeProto3(T t) {
        int iComputeDoubleSize;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i = 0;
        for (int i2 = 0; i2 < this.buffer.length; i2 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i2);
            int iType = type(iTypeAndOffsetAt);
            int iNumberAt = numberAt(i2);
            long jOffset = offset(iTypeAndOffsetAt);
            int i3 = (iType < FieldType.DOUBLE_LIST_PACKED.id() || iType > FieldType.SINT64_LIST_PACKED.id()) ? 0
                    : this.buffer[i2 + 2] & 1048575;
            switch (iType) {
                case 0:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt,
                                UnsafeUtil.getLong(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt,
                                UnsafeUtil.getLong(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt,
                                UnsafeUtil.getInt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 8:
                    if (isFieldPresent(t, i2)) {
                        Object object = UnsafeUtil.getObject(t, jOffset);
                        if (object instanceof ByteString) {
                            iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object);
                        } else {
                            iComputeDoubleSize = CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        }
                        i += iComputeDoubleSize;
                    }
                    break;
                case 9:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, UnsafeUtil.getObject(t, jOffset),
                                getMessageFieldSchema(i2));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 10:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt,
                                (ByteString) UnsafeUtil.getObject(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 11:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt,
                                UnsafeUtil.getInt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 12:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt,
                                UnsafeUtil.getInt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 13:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 14:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 15:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt,
                                UnsafeUtil.getInt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 16:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt,
                                UnsafeUtil.getLong(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 17:
                    if (isFieldPresent(t, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt,
                                (MessageLite) UnsafeUtil.getObject(t, jOffset), (Schema) getMessageFieldSchema(i2));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 18:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 19:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 20:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt64List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 21:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt64List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 22:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt32List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 23:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                    iComputeDoubleSize = SchemaUtil.computeSizeBoolList(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 26:
                    iComputeDoubleSize = SchemaUtil.computeSizeStringList(iNumberAt, listAt(t, jOffset));
                    i += iComputeDoubleSize;
                    break;
                case 27:
                    iComputeDoubleSize = SchemaUtil.computeSizeMessageList(iNumberAt, listAt(t, jOffset),
                            getMessageFieldSchema(i2));
                    i += iComputeDoubleSize;
                    break;
                case 28:
                    iComputeDoubleSize = SchemaUtil.computeSizeByteStringList(iNumberAt, listAt(t, jOffset));
                    i += iComputeDoubleSize;
                    break;
                case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt32List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 30:
                    iComputeDoubleSize = SchemaUtil.computeSizeEnumList(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 31:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 32:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 33:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt32List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 34:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt64List(iNumberAt, listAt(t, jOffset), false);
                    i += iComputeDoubleSize;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeInt64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeUInt64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeInt32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeBoolListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeUInt32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeEnumListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeSInt32ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                    iComputeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeSInt64ListNoTag(listAt(t, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream
                                .computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i += iComputeDoubleSize;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                    iComputeDoubleSize = SchemaUtil.computeSizeGroupList(iNumberAt, listAt(t, jOffset),
                            getMessageFieldSchema(i2));
                    i += iComputeDoubleSize;
                    break;
                case 50:
                    iComputeDoubleSize = this.mapFieldSchema.getSerializedSize(iNumberAt,
                            UnsafeUtil.getObject(t, jOffset), getMapFieldDefaultEntry(i2));
                    i += iComputeDoubleSize;
                    break;
                case 51:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        Object object2 = UnsafeUtil.getObject(t, jOffset);
                        if (object2 instanceof ByteString) {
                            iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2);
                        } else {
                            iComputeDoubleSize = CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        }
                        i += iComputeDoubleSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, UnsafeUtil.getObject(t, jOffset),
                                getMessageFieldSchema(i2));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt,
                                (ByteString) UnsafeUtil.getObject(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i += iComputeDoubleSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(t, jOffset));
                        i += iComputeDoubleSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t, iNumberAt, i2)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt,
                                (MessageLite) UnsafeUtil.getObject(t, jOffset), (Schema) getMessageFieldSchema(i2));
                        i += iComputeDoubleSize;
                    }
                    break;
            }
        }
        return i + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t);
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t) {
        return unknownFieldSchema.getSerializedSize(unknownFieldSchema.getFromMessage(t));
    }

    private static <E> List<E> listAt(Object obj, long j) {
        return (List<E>) UnsafeUtil.getObject(obj, j);
    }

    @Override // com.google.oplus.protobuf.Schema
    public void writeTo(T t, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            writeFieldsInDescendingOrder(t, writer);
        } else if (this.proto3) {
            writeFieldsInAscendingOrderProto3(t, writer);
        } else {
            writeFieldsInAscendingOrderProto2(t, writer);
        }
    }

    /*
     * JADX DEBUG: Type inference failed for r3v3. Raw type applied. Possible types:
     * com.google.oplus.protobuf.UnknownFieldSchema<?, ?>,
     * com.google.oplus.protobuf.UnknownFieldSchema<UT, UB>
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021 */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    private void writeFieldsInAscendingOrderProto2(T t, Writer writer) throws IOException {
        Iterator<?> it = null;
        Map.Entry<?, ?> entry = null;
        int i;
        if (this.hasExtensions) {
            FieldSet<?> extensions = this.extensionSchema.getExtensions(t);
            if (extensions.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = extensions.iterator();
                entry = (Map.Entry) it.next();
            }
        }
        int length = this.buffer.length;
        Unsafe unsafe = UNSAFE;
        int i2 = 1048575;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i4);
            int iNumberAt = numberAt(i4);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                int i6 = this.buffer[i4 + 2];
                int i7 = i6 & i2;
                if (i7 != i3) {
                    i5 = unsafe.getInt(t, i7);
                    i3 = i7;
                }
                i = 1 << (i6 >>> 20);
            } else {
                i = 0;
            }
            while (entry != null && this.extensionSchema.extensionNumber(entry) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    if ((i & i5) != 0) {
                        writer.writeDouble(iNumberAt, doubleAt(t, jOffset));
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 1:
                    if ((i & i5) != 0) {
                        writer.writeFloat(iNumberAt, floatAt(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 2:
                    if ((i & i5) != 0) {
                        writer.writeInt64(iNumberAt, unsafe.getLong(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 3:
                    if ((i & i5) != 0) {
                        writer.writeUInt64(iNumberAt, unsafe.getLong(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 4:
                    if ((i & i5) != 0) {
                        writer.writeInt32(iNumberAt, unsafe.getInt(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 5:
                    if ((i & i5) != 0) {
                        writer.writeFixed64(iNumberAt, unsafe.getLong(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 6:
                    if ((i & i5) != 0) {
                        writer.writeFixed32(iNumberAt, unsafe.getInt(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 7:
                    if ((i & i5) != 0) {
                        writer.writeBool(iNumberAt, booleanAt(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 8:
                    if ((i & i5) != 0) {
                        writeString(iNumberAt, unsafe.getObject(t, jOffset), writer);
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 9:
                    if ((i & i5) != 0) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(t, jOffset), getMessageFieldSchema(i4));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 10:
                    if ((i & i5) != 0) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 11:
                    if ((i & i5) != 0) {
                        writer.writeUInt32(iNumberAt, unsafe.getInt(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 12:
                    if ((i & i5) != 0) {
                        writer.writeEnum(iNumberAt, unsafe.getInt(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 13:
                    if ((i & i5) != 0) {
                        writer.writeSFixed32(iNumberAt, unsafe.getInt(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 14:
                    if ((i & i5) != 0) {
                        writer.writeSFixed64(iNumberAt, unsafe.getLong(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 15:
                    if ((i & i5) != 0) {
                        writer.writeSInt32(iNumberAt, unsafe.getInt(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 16:
                    if ((i & i5) != 0) {
                        writer.writeSInt64(iNumberAt, unsafe.getLong(t, jOffset));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 17:
                    if ((i & i5) != 0) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(t, jOffset), getMessageFieldSchema(i4));
                    } else {
                        break;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                    SchemaUtil.writeFixed32List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                    SchemaUtil.writeBoolList(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(i4), listAt(t, jOffset), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(i4), listAt(t, jOffset), writer,
                            getMessageFieldSchema(i4));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(i4), listAt(t, jOffset), writer);
                    break;
                case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                    SchemaUtil.writeUInt32List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(i4), listAt(t, jOffset), writer, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                    SchemaUtil.writeUInt64List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    SchemaUtil.writeInt32List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                    SchemaUtil.writeUInt32List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    SchemaUtil.writeEnumList(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                    SchemaUtil.writeSInt32List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                    SchemaUtil.writeSInt64List(numberAt(i4), listAt(t, jOffset), writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                    SchemaUtil.writeGroupList(numberAt(i4), listAt(t, jOffset), writer,
                            getMessageFieldSchema(i4));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, unsafe.getObject(t, jOffset), i4);
                    break;
                case 51:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t, jOffset));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t, jOffset));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t, jOffset));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t, jOffset));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t, jOffset));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t, jOffset));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t, jOffset));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t, jOffset));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writeString(iNumberAt, unsafe.getObject(t, jOffset), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(t, jOffset), getMessageFieldSchema(i4));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(t, jOffset));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t, jOffset));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t, jOffset));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t, jOffset));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t, jOffset));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t, jOffset));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t, jOffset));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t, iNumberAt, i4)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(t, jOffset), getMessageFieldSchema(i4));
                    }
                    break;
            }
            i4 += 3;
            i2 = 1048575;
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, t, writer);
    }

    /*
     * JADX DEBUG: Type inference failed for r0v3. Raw type applied. Possible types:
     * com.google.oplus.protobuf.UnknownFieldSchema<?, ?>,
     * com.google.oplus.protobuf.UnknownFieldSchema<UT, UB>
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    private void writeFieldsInAscendingOrderProto3(T t, Writer writer) throws IOException {
        Iterator<?> it = null;
        Map.Entry<?, ?> entry = null;
        if (this.hasExtensions) {
            FieldSet<?> extensions = this.extensionSchema.getExtensions(t);
            if (extensions.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = extensions.iterator();
                entry = (Map.Entry) it.next();
            }
        }
        int length = this.buffer.length;
        for (int i = 0; i < length; i += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i);
            int iNumberAt = numberAt(i);
            while (entry != null && this.extensionSchema.extensionNumber(entry) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(t, i)) {
                        writer.writeDouble(iNumberAt, doubleAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(t, i)) {
                        writer.writeFloat(iNumberAt, floatAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(t, i)) {
                        writer.writeInt64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(t, i)) {
                        writer.writeUInt64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(t, i)) {
                        writer.writeInt32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(t, i)) {
                        writer.writeFixed64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(t, i)) {
                        writer.writeFixed32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(t, i)) {
                        writer.writeBool(iNumberAt, booleanAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(t, i)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(t, i)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                getMessageFieldSchema(i));
                    }
                    break;
                case 10:
                    if (isFieldPresent(t, i)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(t, i)) {
                        writer.writeUInt32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(t, i)) {
                        writer.writeEnum(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(t, i)) {
                        writer.writeSFixed32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(t, i)) {
                        writer.writeSFixed64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(t, i)) {
                        writer.writeSInt32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(t, i)) {
                        writer.writeSInt64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(t, i)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                getMessageFieldSchema(i));
                    }
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                    SchemaUtil.writeFixed32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                    SchemaUtil.writeBoolList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, getMessageFieldSchema(i));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer);
                    break;
                case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                    SchemaUtil.writeUInt32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                    SchemaUtil.writeUInt64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    SchemaUtil.writeInt32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                    SchemaUtil.writeUInt32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    SchemaUtil.writeEnumList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                    SchemaUtil.writeSInt32List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                    SchemaUtil.writeSInt64List(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                    SchemaUtil.writeGroupList(numberAt(i), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, getMessageFieldSchema(i));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)), i);
                    break;
                case 51:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                getMessageFieldSchema(i));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t, iNumberAt, i)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                getMessageFieldSchema(i));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, t, writer);
    }

    /*
     * JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types:
     * com.google.oplus.protobuf.UnknownFieldSchema<?, ?>,
     * com.google.oplus.protobuf.UnknownFieldSchema<UT, UB>
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021 */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    private void writeFieldsInDescendingOrder(T t, Writer writer) throws IOException {
        Iterator<?> itDescendingIterator = null;
        Map.Entry<?, ?> entry = null;
        writeUnknownInMessageTo(this.unknownFieldSchema, t, writer);
        if (this.hasExtensions) {
            FieldSet<?> extensions = this.extensionSchema.getExtensions(t);
            if (extensions.isEmpty()) {
                itDescendingIterator = null;
                entry = null;
            } else {
                itDescendingIterator = extensions.descendingIterator();
                entry = (Map.Entry) itDescendingIterator.next();
            }
        }
        for (int length = this.buffer.length - 3; length >= 0; length -= 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(length);
            int iNumberAt = numberAt(length);
            while (entry != null && this.extensionSchema.extensionNumber(entry) > iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(t, length)) {
                        writer.writeDouble(iNumberAt, doubleAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(t, length)) {
                        writer.writeFloat(iNumberAt, floatAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(t, length)) {
                        writer.writeInt64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(t, length)) {
                        writer.writeUInt64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(t, length)) {
                        writer.writeInt32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(t, length)) {
                        writer.writeFixed64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(t, length)) {
                        writer.writeFixed32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(t, length)) {
                        writer.writeBool(iNumberAt, booleanAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(t, length)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(t, length)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                getMessageFieldSchema(length));
                    }
                    break;
                case 10:
                    if (isFieldPresent(t, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(t, length)) {
                        writer.writeUInt32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(t, length)) {
                        writer.writeEnum(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(t, length)) {
                        writer.writeSFixed32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(t, length)) {
                        writer.writeSFixed64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(t, length)) {
                        writer.writeSInt32(iNumberAt, intAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(t, length)) {
                        writer.writeSInt64(iNumberAt, longAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(t, length)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                getMessageFieldSchema(length));
                    }
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                    SchemaUtil.writeFixed32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                    SchemaUtil.writeBoolList(numberAt(length), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer,
                            getMessageFieldSchema(length));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer);
                    break;
                case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                    SchemaUtil.writeUInt32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(length), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, false);
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                    SchemaUtil.writeUInt64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    SchemaUtil.writeInt32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(length), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                    SchemaUtil.writeUInt32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    SchemaUtil.writeEnumList(numberAt(length), listAt(t, offset(iTypeAndOffsetAt)),
                            writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                    SchemaUtil.writeSInt32List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                    SchemaUtil.writeSInt64List(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                    SchemaUtil.writeGroupList(numberAt(length),
                            listAt(t, offset(iTypeAndOffsetAt)), writer,
                            getMessageFieldSchema(length));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)), length);
                    break;
                case 51:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                getMessageFieldSchema(length));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t, iNumberAt, length)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                getMessageFieldSchema(length));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
        }
    }

    private <K, V> void writeMapHelper(Writer writer, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            writer.writeMap(i,
                    (MapEntryLite.Metadata<K, V>) this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2)),
                    (Map<K, V>) this.mapFieldSchema.forMapData(obj));
        }
    }

    private <UT, UB> void writeUnknownInMessageTo(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t, Writer writer)
            throws IOException {
        unknownFieldSchema.writeTo(unknownFieldSchema.getFromMessage(t), writer);
    }

    /*
     * JADX DEBUG: Type inference failed for r1v0. Raw type applied. Possible types:
     * com.google.oplus.protobuf.UnknownFieldSchema<?, ?>,
     * com.google.oplus.protobuf.UnknownFieldSchema<UT, UB>
     */
    /*
     * JADX DEBUG: Type inference failed for r2v0. Raw type applied. Possible types:
     * com.google.oplus.protobuf.ExtensionSchema<?>,
     * com.google.oplus.protobuf.ExtensionSchema<ET extends
     * com.google.oplus.protobuf.FieldSet$FieldDescriptorLite<ET>>
     */
    @Override // com.google.oplus.protobuf.Schema
    public void mergeFrom(T t, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        extensionRegistryLite.getClass();
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, t, reader, extensionRegistryLite);
    }

    /*
     * JADX DEBUG: Another duplicated slice has different insns count: {[IGET]},
     * finally: {[IGET, IGET, AGET, INVOKE, ARITH, INVOKE, IF, IF, IGET] complete}
     */
    /*
     * JADX DEBUG: Don't trust debug lines info. Repeating lines: [4334=6, 4335=6,
     * 4336=6, 4339=6]
     */
    /*
     * JADX DEBUG: Multi-variable search result rejected for r17v0, resolved type:
     * com.google.oplus.protobuf.UnknownFieldSchema<UT, UB>
     */
    /*
     * JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type:
     * com.google.oplus.protobuf.FieldSet<T extends
     * com.google.oplus.protobuf.FieldSet$FieldDescriptorLite<T>>
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:32:0x0075, code lost:
     * 
     * r0 = r16.checkInitializedCount;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
     * 
     * if (r0 >= r16.repeatedFieldOffsetStart) goto L357;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:35:0x007b, code lost:
     * 
     * r13 = filterMapUnknownEnumValues(r19, r16.intArray[r0], r13, r17);
     * r0 = r0 + 1;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:361:?, code lost:
     * 
     * return;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:36:0x0086, code lost:
     * 
     * if (r13 == null) goto L361;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:37:0x0088, code lost:
     * 
     * r17.setBuilderToMessage(r19, r13);
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:38:0x008b, code lost:
     * 
     * return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void mergeFromHelper(
            UnknownFieldSchema<UT, UB> unknownFieldSchema, ExtensionSchema<ET> extensionSchema, T t, Reader reader,
            ExtensionRegistryLite extensionRegistryLite) throws IOException {
        UB objFilterMapUnknownEnumValues = null;
        FieldSet<ET> mutableExtensions = null;
        while (true) {
            try {
                int fieldNumber = reader.getFieldNumber();
                int iPositionForFieldNumber = positionForFieldNumber(fieldNumber);
                if (iPositionForFieldNumber >= 0) {
                    int iTypeAndOffsetAt = typeAndOffsetAt(iPositionForFieldNumber);
                    try {
                        switch (type(iTypeAndOffsetAt)) {
                            case 0:
                                UnsafeUtil.putDouble(t, offset(iTypeAndOffsetAt), reader.readDouble());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 1:
                                UnsafeUtil.putFloat(t, offset(iTypeAndOffsetAt), reader.readFloat());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 2:
                                UnsafeUtil.putLong(t, offset(iTypeAndOffsetAt), reader.readInt64());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 3:
                                UnsafeUtil.putLong(t, offset(iTypeAndOffsetAt), reader.readUInt64());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 4:
                                UnsafeUtil.putInt(t, offset(iTypeAndOffsetAt), reader.readInt32());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 5:
                                UnsafeUtil.putLong(t, offset(iTypeAndOffsetAt), reader.readFixed64());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 6:
                                UnsafeUtil.putInt(t, offset(iTypeAndOffsetAt), reader.readFixed32());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 7:
                                UnsafeUtil.putBoolean(t, offset(iTypeAndOffsetAt), reader.readBool());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 8:
                                readString(t, iTypeAndOffsetAt, reader);
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 9:
                                if (isFieldPresent(t, iPositionForFieldNumber)) {
                                    UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt),
                                            Internal.mergeMessage(UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                                    reader.readMessageBySchemaWithCheck(
                                                            getMessageFieldSchema(iPositionForFieldNumber),
                                                            extensionRegistryLite)));
                                } else {
                                    UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt),
                                            reader.readMessageBySchemaWithCheck(
                                                    getMessageFieldSchema(iPositionForFieldNumber),
                                                    extensionRegistryLite));
                                    setFieldPresent(t, iPositionForFieldNumber);
                                }
                                break;
                            case 10:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), reader.readBytes());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 11:
                                UnsafeUtil.putInt(t, offset(iTypeAndOffsetAt), reader.readUInt32());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 12:
                                int i = reader.readEnum();
                                Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(iPositionForFieldNumber);
                                if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i)) {
                                    UnsafeUtil.putInt(t, offset(iTypeAndOffsetAt), i);
                                    setFieldPresent(t, iPositionForFieldNumber);
                                } else {
                                    objFilterMapUnknownEnumValues = SchemaUtil.storeUnknownEnum(fieldNumber, i,
                                            objFilterMapUnknownEnumValues, unknownFieldSchema);
                                }
                                break;
                            case 13:
                                UnsafeUtil.putInt(t, offset(iTypeAndOffsetAt), reader.readSFixed32());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 14:
                                UnsafeUtil.putLong(t, offset(iTypeAndOffsetAt), reader.readSFixed64());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 15:
                                UnsafeUtil.putInt(t, offset(iTypeAndOffsetAt), reader.readSInt32());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 16:
                                UnsafeUtil.putLong(t, offset(iTypeAndOffsetAt), reader.readSInt64());
                                setFieldPresent(t, iPositionForFieldNumber);
                                break;
                            case 17:
                                if (isFieldPresent(t, iPositionForFieldNumber)) {
                                    UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt),
                                            Internal.mergeMessage(UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                                    reader.readGroupBySchemaWithCheck(
                                                            getMessageFieldSchema(iPositionForFieldNumber),
                                                            extensionRegistryLite)));
                                } else {
                                    UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), reader.readGroupBySchemaWithCheck(
                                            getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite));
                                    setFieldPresent(t, iPositionForFieldNumber);
                                }
                                break;
                            case 18:
                                reader.readDoubleList(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 19:
                                reader.readFloatList(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 20:
                                reader.readInt64List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 21:
                                reader.readUInt64List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 22:
                                reader.readInt32List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 23:
                                reader.readFixed64List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                                reader.readFixed32List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                                reader.readBoolList(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 26:
                                readStringList(t, iTypeAndOffsetAt, reader);
                                break;
                            case 27:
                                readMessageList(t, iTypeAndOffsetAt, reader,
                                        (Schema) getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite);
                                break;
                            case 28:
                                reader.readBytesList(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                                reader.readUInt32List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 30:
                                List<Integer> listMutableListAt = this.listFieldSchema.mutableListAt(t,
                                        offset(iTypeAndOffsetAt));
                                reader.readEnumList(listMutableListAt);
                                objFilterMapUnknownEnumValues = SchemaUtil.filterUnknownEnumList(fieldNumber,
                                        listMutableListAt, getEnumFieldVerifier(iPositionForFieldNumber),
                                        objFilterMapUnknownEnumValues, unknownFieldSchema);
                                break;
                            case 31:
                                reader.readSFixed32List(
                                        this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 32:
                                reader.readSFixed64List(
                                        this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 33:
                                reader.readSInt32List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 34:
                                reader.readSInt64List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 35:
                                reader.readDoubleList(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 36:
                                reader.readFloatList(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 37:
                                reader.readInt64List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                                reader.readUInt64List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                reader.readInt32List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 40:
                                reader.readFixed64List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 41:
                                reader.readFixed32List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 42:
                                reader.readBoolList(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                                reader.readUInt32List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                List<Integer> listMutableListAt2 = this.listFieldSchema.mutableListAt(t,
                                        offset(iTypeAndOffsetAt));
                                reader.readEnumList(listMutableListAt2);
                                objFilterMapUnknownEnumValues = SchemaUtil.filterUnknownEnumList(fieldNumber,
                                        listMutableListAt2, getEnumFieldVerifier(iPositionForFieldNumber),
                                        objFilterMapUnknownEnumValues, unknownFieldSchema);
                                break;
                            case 45:
                                reader.readSFixed32List(
                                        this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case 46:
                                reader.readSFixed64List(
                                        this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                                reader.readSInt32List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                                reader.readSInt64List(this.listFieldSchema.mutableListAt(t, offset(iTypeAndOffsetAt)));
                                break;
                            case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                                readGroupList(t, offset(iTypeAndOffsetAt), reader,
                                        (Schema) getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite);
                                break;
                            case 50:
                                mergeMap(t, iPositionForFieldNumber, getMapFieldDefaultEntry(iPositionForFieldNumber),
                                        extensionRegistryLite, reader);
                                break;
                            case 51:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Double.valueOf(reader.readDouble()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 52:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Float.valueOf(reader.readFloat()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 53:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Long.valueOf(reader.readInt64()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 54:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Long.valueOf(reader.readUInt64()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 55:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readInt32()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 56:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Long.valueOf(reader.readFixed64()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 57:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt),
                                        Integer.valueOf(reader.readFixed32()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 58:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Boolean.valueOf(reader.readBool()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 59:
                                readString(t, iTypeAndOffsetAt, reader);
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 60:
                                if (isOneofPresent(t, fieldNumber, iPositionForFieldNumber)) {
                                    UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt),
                                            Internal.mergeMessage(UnsafeUtil.getObject(t, offset(iTypeAndOffsetAt)),
                                                    reader.readMessageBySchemaWithCheck(
                                                            getMessageFieldSchema(iPositionForFieldNumber),
                                                            extensionRegistryLite)));
                                } else {
                                    UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt),
                                            reader.readMessageBySchemaWithCheck(
                                                    getMessageFieldSchema(iPositionForFieldNumber),
                                                    extensionRegistryLite));
                                    setFieldPresent(t, iPositionForFieldNumber);
                                }
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 61:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), reader.readBytes());
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 62:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readUInt32()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 63:
                                int i2 = reader.readEnum();
                                Internal.EnumVerifier enumFieldVerifier2 = getEnumFieldVerifier(
                                        iPositionForFieldNumber);
                                if (enumFieldVerifier2 == null || enumFieldVerifier2.isInRange(i2)) {
                                    UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Integer.valueOf(i2));
                                    setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                } else {
                                    objFilterMapUnknownEnumValues = SchemaUtil.storeUnknownEnum(fieldNumber, i2,
                                            objFilterMapUnknownEnumValues, unknownFieldSchema);
                                }
                                break;
                            case 64:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt),
                                        Integer.valueOf(reader.readSFixed32()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 65:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Long.valueOf(reader.readSFixed64()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 66:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readSInt32()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 67:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), Long.valueOf(reader.readSInt64()));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 68:
                                UnsafeUtil.putObject(t, offset(iTypeAndOffsetAt), reader.readGroupBySchemaWithCheck(
                                        getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite));
                                setOneofPresent(t, fieldNumber, iPositionForFieldNumber);
                                break;
                            default:
                                if (objFilterMapUnknownEnumValues == null) {
                                    objFilterMapUnknownEnumValues = unknownFieldSchema.newBuilder();
                                }
                                if (!unknownFieldSchema.mergeOneFieldFrom(objFilterMapUnknownEnumValues, reader)) {
                                    for (int i3 = this.checkInitializedCount; i3 < this.repeatedFieldOffsetStart; i3++) {
                                        objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t, this.intArray[i3],
                                                objFilterMapUnknownEnumValues, unknownFieldSchema);
                                    }
                                    if (objFilterMapUnknownEnumValues != null) {
                                        unknownFieldSchema.setBuilderToMessage(t, objFilterMapUnknownEnumValues);
                                        return;
                                    }
                                    return;
                                }
                                break;
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                        if (!unknownFieldSchema.shouldDiscardUnknownFields(reader)) {
                            if (objFilterMapUnknownEnumValues == null) {
                                objFilterMapUnknownEnumValues = unknownFieldSchema.getBuilderFromMessage(t);
                            }
                            if (!unknownFieldSchema.mergeOneFieldFrom(objFilterMapUnknownEnumValues, reader)) {
                                for (int i4 = this.checkInitializedCount; i4 < this.repeatedFieldOffsetStart; i4++) {
                                    objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t, this.intArray[i4],
                                            objFilterMapUnknownEnumValues, unknownFieldSchema);
                                }
                                if (objFilterMapUnknownEnumValues != null) {
                                    unknownFieldSchema.setBuilderToMessage(t, objFilterMapUnknownEnumValues);
                                    return;
                                }
                                return;
                            }
                        } else if (!reader.skipField()) {
                            for (int i5 = this.checkInitializedCount; i5 < this.repeatedFieldOffsetStart; i5++) {
                                objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t, this.intArray[i5],
                                        objFilterMapUnknownEnumValues, unknownFieldSchema);
                            }
                            if (objFilterMapUnknownEnumValues != null) {
                                unknownFieldSchema.setBuilderToMessage(t, objFilterMapUnknownEnumValues);
                                return;
                            }
                            return;
                        }
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        for (int i6 = this.checkInitializedCount; i6 < this.repeatedFieldOffsetStart; i6++) {
                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t, this.intArray[i6],
                                    objFilterMapUnknownEnumValues, unknownFieldSchema);
                        }
                        if (objFilterMapUnknownEnumValues != null) {
                            unknownFieldSchema.setBuilderToMessage(t, objFilterMapUnknownEnumValues);
                            return;
                        }
                        return;
                    }
                    Object objFindExtensionByNumber = !this.hasExtensions ? null
                            : extensionSchema.findExtensionByNumber(extensionRegistryLite, this.defaultInstance,
                                    fieldNumber);
                    if (objFindExtensionByNumber != null) {
                        if (mutableExtensions == null) {
                            mutableExtensions = extensionSchema.getMutableExtensions(t);
                        }
                        objFilterMapUnknownEnumValues = extensionSchema.parseExtension(reader, objFindExtensionByNumber,
                                extensionRegistryLite, mutableExtensions, objFilterMapUnknownEnumValues,
                                unknownFieldSchema);
                    } else if (!unknownFieldSchema.shouldDiscardUnknownFields(reader)) {
                        if (objFilterMapUnknownEnumValues == null) {
                            objFilterMapUnknownEnumValues = unknownFieldSchema.getBuilderFromMessage(t);
                        }
                        if (unknownFieldSchema.mergeOneFieldFrom(objFilterMapUnknownEnumValues, reader)) {
                        }
                    } else if (reader.skipField()) {
                    }
                }
            } catch (Throwable th) {
                for (int i7 = this.checkInitializedCount; i7 < this.repeatedFieldOffsetStart; i7++) {
                    objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t, this.intArray[i7],
                            objFilterMapUnknownEnumValues, unknownFieldSchema);
                }
                if (objFilterMapUnknownEnumValues != null) {
                    unknownFieldSchema.setBuilderToMessage(t, objFilterMapUnknownEnumValues);
                }
                throw th;
            }
        }
    }

    static UnknownFieldSetLite getMutableUnknownFields(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite != UnknownFieldSetLite.getDefaultInstance()) {
            return unknownFieldSetLite;
        }
        UnknownFieldSetLite unknownFieldSetLiteNewInstance = UnknownFieldSetLite.newInstance();
        generatedMessageLite.unknownFields = unknownFieldSetLiteNewInstance;
        return unknownFieldSetLiteNewInstance;
    }

    /*
     * JADX INFO: renamed from: com.google.oplus.protobuf.MessageSchema$1, reason:
     * invalid class name
     */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private int decodeMapEntryValue(byte[] bArr, int i, int i2, WireFormat.FieldType fieldType, Class<?> cls,
            ArrayDecoders.Registers registers) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$google$oplus$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                int iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Boolean.valueOf(registers.long1 != 0);
                return iDecodeVarint64;
            case 2:
                return ArrayDecoders.decodeBytes(bArr, i, registers);
            case 3:
                registers.object1 = Double.valueOf(ArrayDecoders.decodeDouble(bArr, i));
                return i + 8;
            case 4:
            case 5:
                registers.object1 = Integer.valueOf(ArrayDecoders.decodeFixed32(bArr, i));
                return i + 4;
            case 6:
            case 7:
                registers.object1 = Long.valueOf(ArrayDecoders.decodeFixed64(bArr, i));
                return i + 8;
            case 8:
                registers.object1 = Float.valueOf(ArrayDecoders.decodeFloat(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iDecodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                registers.object1 = Integer.valueOf(registers.int1);
                return iDecodeVarint32;
            case 12:
            case 13:
                int iDecodeVarint642 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Long.valueOf(registers.long1);
                return iDecodeVarint642;
            case 14:
                return ArrayDecoders.decodeMessageField(Protobuf.getInstance().schemaFor(cls), bArr, i, i2,
                        registers);
            case 15:
                int iDecodeVarint322 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                registers.object1 = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                return iDecodeVarint322;
            case 16:
                int iDecodeVarint643 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                return iDecodeVarint643;
            case 17:
                return ArrayDecoders.decodeStringRequireUtf8(bArr, i, registers);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /*
     * JADX DEBUG: Multi-variable search result rejected for r19v0, resolved type:
     * java.util.Map<K, V>
     */
    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int decodeMapEntry(byte[] bArr, int i, int i2, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map,
            ArrayDecoders.Registers registers) throws IOException {
        int iDecodeVarint32;
        int iDecodeVarint322 = ArrayDecoders.decodeVarint32(bArr, i, registers);
        int i3 = registers.int1;
        if (i3 < 0 || i3 > i2 - iDecodeVarint322) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i4 = iDecodeVarint322 + i3;
        Object obj = metadata.defaultKey;
        Object obj2 = metadata.defaultValue;
        while (iDecodeVarint322 < i4) {
            int i5 = iDecodeVarint322 + 1;
            int i6 = bArr[iDecodeVarint322];
            if (i6 < 0) {
                iDecodeVarint32 = ArrayDecoders.decodeVarint32(i6, bArr, i5, registers);
                i6 = registers.int1;
            } else {
                iDecodeVarint32 = i5;
            }
            int i7 = i6 >>> 3;
            int i8 = i6 & 7;
            if (i7 == 1) {
                if (i8 == metadata.keyType.getWireType()) {
                    iDecodeVarint322 = decodeMapEntryValue(bArr, iDecodeVarint32, i2, metadata.keyType, null,
                            registers);
                    obj = registers.object1;
                } else {
                    iDecodeVarint322 = ArrayDecoders.skipField(i6, bArr, iDecodeVarint32, i2, registers);
                }
            } else if (i7 == 2 && i8 == metadata.valueType.getWireType()) {
                iDecodeVarint322 = decodeMapEntryValue(bArr, iDecodeVarint32, i2, metadata.valueType,
                        metadata.defaultValue.getClass(), registers);
                obj2 = registers.object1;
            } else {
                iDecodeVarint322 = ArrayDecoders.skipField(i6, bArr, iDecodeVarint32, i2, registers);
            }
        }
        if (iDecodeVarint322 != i4) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        ((Map<Object, Object>) map).put(obj, obj2);
        return i4;
    }

    /*
     * JADX DEBUG: Multi-variable search result rejected for r14v0, resolved type: T
     */
    /* JADX WARN: Multi-variable type inference failed */
    private int parseRepeatedField(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7,
            long j2, ArrayDecoders.Registers registers) throws IOException {
        int iDecodeVarint32List;
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList<?> protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList<?>) unsafe.getObject(t,
                j2);
        if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
            int size = protobufListMutableCopyWithCapacity2.size();
            protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2
                    .mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
            unsafe.putObject(t, j2, protobufListMutableCopyWithCapacity2);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedDoubleList(bArr, i, protobufListMutableCopyWithCapacity2,
                            registers);
                }
                return i5 == 1
                        ? ArrayDecoders.decodeDoubleList(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2,
                                registers)
                        : i;
            case 19:
            case 36:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedFloatList(bArr, i, protobufListMutableCopyWithCapacity2,
                            registers);
                }
                return i5 == 5
                        ? ArrayDecoders.decodeFloatList(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2,
                                registers)
                        : i;
            case 20:
            case 21:
            case 37:
            case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedVarint64List(bArr, i, protobufListMutableCopyWithCapacity2,
                            registers);
                }
                return i5 == 0
                        ? ArrayDecoders.decodeVarint64List(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2,
                                registers)
                        : i;
            case 22:
            case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
            case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
            case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedVarint32List(bArr, i, protobufListMutableCopyWithCapacity2,
                            registers);
                }
                return i5 == 0
                        ? ArrayDecoders.decodeVarint32List(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2,
                                registers)
                        : i;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedFixed64List(bArr, i, protobufListMutableCopyWithCapacity2,
                            registers);
                }
                return i5 == 1
                        ? ArrayDecoders.decodeFixed64List(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2,
                                registers)
                        : i;
            case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedFixed32List(bArr, i, protobufListMutableCopyWithCapacity2,
                            registers);
                }
                return i5 == 5
                        ? ArrayDecoders.decodeFixed32List(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2,
                                registers)
                        : i;
            case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
            case 42:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedBoolList(bArr, i, protobufListMutableCopyWithCapacity2, registers);
                }
                return i5 == 0
                        ? ArrayDecoders.decodeBoolList(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, registers)
                        : i;
            case 26:
                if (i5 != 2) {
                    return i;
                }
                if ((j & 536870912) == 0) {
                    return ArrayDecoders.decodeStringList(i3, bArr, i, i2,
                            (Internal.ProtobufList<String>) protobufListMutableCopyWithCapacity2,
                            registers);
                }
                return ArrayDecoders.decodeStringListRequireUtf8(i3, bArr, i, i2,
                        (Internal.ProtobufList<String>) protobufListMutableCopyWithCapacity2,
                        registers);
            case 27:
                return i5 == 2 ? ArrayDecoders.decodeMessageList(getMessageFieldSchema(i6), i3, bArr, i, i2,
                        (Internal.ProtobufList<Object>) protobufListMutableCopyWithCapacity2, registers) : i;
            case 28:
                return i5 == 2
                        ? ArrayDecoders.decodeBytesList(i3, bArr, i, i2,
                                (Internal.ProtobufList<ByteString>) protobufListMutableCopyWithCapacity2,
                                registers)
                        : i;
            case 30:
            case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                if (i5 == 2) {
                    iDecodeVarint32List = ArrayDecoders.decodePackedVarint32List(bArr, i,
                            protobufListMutableCopyWithCapacity2, registers);
                } else {
                    if (i5 != 0) {
                        return i;
                    }
                    iDecodeVarint32List = ArrayDecoders.decodeVarint32List(i3, bArr, i, i2,
                            protobufListMutableCopyWithCapacity2, registers);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t;
                UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
                if (unknownFieldSetLite == UnknownFieldSetLite.getDefaultInstance()) {
                    unknownFieldSetLite = null;
                }
                UnknownFieldSetLite unknownFieldSetLite2 = (UnknownFieldSetLite) SchemaUtil.filterUnknownEnumList(i4,
                        (List<Integer>) protobufListMutableCopyWithCapacity2, getEnumFieldVerifier(i6),
                        unknownFieldSetLite, (UnknownFieldSchema<Object, UnknownFieldSetLite>) this.unknownFieldSchema);
                if (unknownFieldSetLite2 != null) {
                    generatedMessageLite.unknownFields = unknownFieldSetLite2;
                }
                return iDecodeVarint32List;
            case 33:
            case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedSInt32List(bArr, i, protobufListMutableCopyWithCapacity2,
                            registers);
                }
                return i5 == 0
                        ? ArrayDecoders.decodeSInt32List(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2,
                                registers)
                        : i;
            case 34:
            case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedSInt64List(bArr, i, protobufListMutableCopyWithCapacity2,
                            registers);
                }
                return i5 == 0
                        ? ArrayDecoders.decodeSInt64List(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2,
                                registers)
                        : i;
            case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                return i5 == 3 ? ArrayDecoders.decodeGroupList(getMessageFieldSchema(i6), i3, bArr, i, i2,
                        (Internal.ProtobufList<Object>) protobufListMutableCopyWithCapacity2, registers) : i;
            default:
                return i;
        }
    }

    private <K, V> int parseMapField(T t, byte[] bArr, int i, int i2, int i3, long j, ArrayDecoders.Registers registers)
            throws IOException {
        Unsafe unsafe = UNSAFE;
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i3);
        Object object = unsafe.getObject(t, j);
        if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(mapFieldDefaultEntry);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            unsafe.putObject(t, j, objNewMapField);
            object = objNewMapField;
        }
        return decodeMapEntry(bArr, i, i2,
                (MapEntryLite.Metadata<Object, Object>) this.mapFieldSchema.forMapMetadata(mapFieldDefaultEntry),
                (Map<Object, Object>) this.mapFieldSchema.forMutableMapData(object), registers);
    }

    private int parseOneofField(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8,
            ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe = UNSAFE;
        long j2 = this.buffer[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Double.valueOf(ArrayDecoders.decodeDouble(bArr, i)));
                int i9 = i + 8;
                unsafe.putInt(t, j2, i4);
                return i9;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Float.valueOf(ArrayDecoders.decodeFloat(bArr, i)));
                int i10 = i + 4;
                unsafe.putInt(t, j2, i4);
                return i10;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                unsafe.putObject(t, j, Long.valueOf(registers.long1));
                unsafe.putInt(t, j2, i4);
                return iDecodeVarint64;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                int iDecodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                unsafe.putObject(t, j, Integer.valueOf(registers.int1));
                unsafe.putInt(t, j2, i4);
                return iDecodeVarint32;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Long.valueOf(ArrayDecoders.decodeFixed64(bArr, i)));
                int i11 = i + 8;
                unsafe.putInt(t, j2, i4);
                return i11;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Integer.valueOf(ArrayDecoders.decodeFixed32(bArr, i)));
                int i12 = i + 4;
                unsafe.putInt(t, j2, i4);
                return i12;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int iDecodeVarint642 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                unsafe.putObject(t, j, Boolean.valueOf(registers.long1 != 0));
                unsafe.putInt(t, j2, i4);
                return iDecodeVarint642;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iDecodeVarint322 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                int i13 = registers.int1;
                if (i13 == 0) {
                    unsafe.putObject(t, j, "");
                } else {
                    if ((i6 & ENFORCE_UTF8_MASK) != 0
                            && !Utf8.isValidUtf8(bArr, iDecodeVarint322, iDecodeVarint322 + i13)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    unsafe.putObject(t, j, new String(bArr, iDecodeVarint322, i13, Internal.UTF_8));
                    iDecodeVarint322 += i13;
                }
                unsafe.putInt(t, j2, i4);
                return iDecodeVarint322;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int iDecodeMessageField = ArrayDecoders.decodeMessageField(getMessageFieldSchema(i8), bArr, i, i2,
                        registers);
                Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                if (object == null) {
                    unsafe.putObject(t, j, registers.object1);
                } else {
                    unsafe.putObject(t, j, Internal.mergeMessage(object, registers.object1));
                }
                unsafe.putInt(t, j2, i4);
                return iDecodeMessageField;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int iDecodeBytes = ArrayDecoders.decodeBytes(bArr, i, registers);
                unsafe.putObject(t, j, registers.object1);
                unsafe.putInt(t, j2, i4);
                return iDecodeBytes;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iDecodeVarint323 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                int i14 = registers.int1;
                Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i8);
                if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i14)) {
                    unsafe.putObject(t, j, Integer.valueOf(i14));
                    unsafe.putInt(t, j2, i4);
                } else {
                    getMutableUnknownFields(t).storeField(i3, Long.valueOf(i14));
                }
                return iDecodeVarint323;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                int iDecodeVarint324 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                unsafe.putObject(t, j, Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1)));
                unsafe.putInt(t, j2, i4);
                return iDecodeVarint324;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                int iDecodeVarint643 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                unsafe.putObject(t, j, Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1)));
                unsafe.putInt(t, j2, i4);
                return iDecodeVarint643;
            case 68:
                if (i5 != 3) {
                    return i;
                }
                int iDecodeGroupField = ArrayDecoders.decodeGroupField(getMessageFieldSchema(i8), bArr, i, i2,
                        (i3 & (-8)) | 4, registers);
                Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                if (object2 == null) {
                    unsafe.putObject(t, j, registers.object1);
                } else {
                    unsafe.putObject(t, j, Internal.mergeMessage(object2, registers.object1));
                }
                unsafe.putInt(t, j2, i4);
                return iDecodeGroupField;
            default:
                return i;
        }
    }

    private Schema<?> getMessageFieldSchema(int i) {
        int i2 = (i / 3) * 2;
        Schema<?> schema = (Schema<?>) this.objects[i2];
        if (schema != null) {
            return schema;
        }
        Schema<?> schemaSchemaFor = Protobuf.getInstance().schemaFor((Class<?>) this.objects[i2 + 1]);
        this.objects[i2] = schemaSchemaFor;
        return schemaSchemaFor;
    }

    private Object getMapFieldDefaultEntry(int i) {
        return this.objects[(i / 3) * 2];
    }

    private Internal.EnumVerifier getEnumFieldVerifier(int i) {
        return (Internal.EnumVerifier) this.objects[((i / 3) * 2) + 1];
    }

    /*
     * JADX DEBUG: Type inference failed for r6v3. Raw type applied. Possible types:
     * com.google.oplus.protobuf.UnknownFieldSchema<?, ?>,
     * com.google.oplus.protobuf.UnknownFieldSchema<UT, UB>
     */
    /*
     * JADX WARN: Failed to find 'out' block for switch in B:24:0x008d. Please
     * report as an issue.
     */
    int parseProto2Message(T t, byte[] bArr, int i, int i2, int i3, ArrayDecoders.Registers registers)
            throws IOException {
        Unsafe unsafe = null;
        int i4 = 0;
        MessageSchema<T> messageSchema = null;
        int i5 = 0;
        T t2 = null;
        int i6 = 0;
        int iPositionForFieldNumber = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        T t3 = null;
        T t4 = null;
        int i15 = 0;
        T t5 = null;
        int i16 = 0;
        int i17 = 0;
        MessageSchema<T> messageSchema2 = this;
        T t6 = t;
        byte[] bArr2 = bArr;
        int i18 = i2;
        int i19 = i3;
        ArrayDecoders.Registers registers2 = registers;
        Unsafe unsafe2 = UNSAFE;
        int iDecodeUnknownField = i;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = -1;
        int i24 = 1048575;
        while (true) {
            if (iDecodeUnknownField < i18) {
                int i25 = iDecodeUnknownField + 1;
                byte b = bArr2[iDecodeUnknownField];
                if (b < 0) {
                    int iDecodeVarint32 = ArrayDecoders.decodeVarint32(b, bArr2, i25, registers2);
                    i6 = registers2.int1;
                    i25 = iDecodeVarint32;
                } else {
                    i6 = b;
                }
                int i26 = i6 >>> 3;
                int i27 = i6 & 7;
                if (i26 > i23) {
                    iPositionForFieldNumber = messageSchema2.positionForFieldNumber(i26, i20 / 3);
                } else {
                    iPositionForFieldNumber = messageSchema2.positionForFieldNumber(i26);
                }
                int i28 = iPositionForFieldNumber;
                if (i28 == -1) {
                    i7 = i26;
                    i8 = i25;
                    i9 = i6;
                    i10 = i22;
                    i11 = i24;
                    unsafe = unsafe2;
                    i4 = i19;
                    i12 = 0;
                } else {
                    int i29 = messageSchema2.buffer[i28 + 1];
                    int iType = type(i29);
                    long jOffset = offset(i29);
                    int i30 = i6;
                    if (iType <= 17) {
                        int i31 = messageSchema2.buffer[i28 + 2];
                        int i32 = 1 << (i31 >>> 20);
                        int i33 = i31 & 1048575;
                        if (i33 != i24) {
                            if (i24 != 1048575) {
                                unsafe2.putInt(t6, i24, i22);
                            }
                            i22 = unsafe2.getInt(t6, i33);
                            i11 = i33;
                        } else {
                            i11 = i24;
                        }
                        int i34 = i22;
                        switch (iType) {
                            case 0:
                                t3 = t6;
                                i13 = i28;
                                i7 = i26;
                                bArr2 = bArr;
                                i14 = i30;
                                if (i27 == 1) {
                                    UnsafeUtil.putDouble(t3, jOffset, ArrayDecoders.decodeDouble(bArr2, i25));
                                    iDecodeUnknownField = i25 + 8;
                                    i22 = i34 | i32;
                                    i18 = i2;
                                    t6 = t3;
                                    i20 = i13;
                                    i21 = i14;
                                    i23 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 1:
                                t3 = t6;
                                i13 = i28;
                                i7 = i26;
                                bArr2 = bArr;
                                i14 = i30;
                                if (i27 == 5) {
                                    UnsafeUtil.putFloat(t3, jOffset, ArrayDecoders.decodeFloat(bArr2, i25));
                                    iDecodeUnknownField = i25 + 4;
                                    i22 = i34 | i32;
                                    i18 = i2;
                                    t6 = t3;
                                    i20 = i13;
                                    i21 = i14;
                                    i23 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 2:
                            case 3:
                                T t7 = t6;
                                i13 = i28;
                                i7 = i26;
                                bArr2 = bArr;
                                i14 = i30;
                                if (i27 == 0) {
                                    int iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr2, i25, registers2);
                                    t4 = t7;
                                    unsafe2.putLong(t, jOffset, registers2.long1);
                                    i22 = i34 | i32;
                                    iDecodeUnknownField = iDecodeVarint64;
                                    i20 = i13;
                                    i21 = i14;
                                    t6 = t4;
                                    i23 = i7;
                                    i24 = i11;
                                    i18 = i2;
                                    i19 = i3;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 4:
                            case 11:
                                t3 = t6;
                                i13 = i28;
                                i7 = i26;
                                bArr2 = bArr;
                                i14 = i30;
                                if (i27 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, i25, registers2);
                                    unsafe2.putInt(t3, jOffset, registers2.int1);
                                    i22 = i34 | i32;
                                    i18 = i2;
                                    t6 = t3;
                                    i20 = i13;
                                    i21 = i14;
                                    i23 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 5:
                            case 14:
                                T t8 = t6;
                                i13 = i28;
                                i7 = i26;
                                bArr2 = bArr;
                                i14 = i30;
                                if (i27 == 1) {
                                    t4 = t8;
                                    unsafe2.putLong(t, jOffset, ArrayDecoders.decodeFixed64(bArr2, i25));
                                    iDecodeUnknownField = i25 + 8;
                                    i22 = i34 | i32;
                                    i20 = i13;
                                    i21 = i14;
                                    t6 = t4;
                                    i23 = i7;
                                    i24 = i11;
                                    i18 = i2;
                                    i19 = i3;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 6:
                            case 13:
                                i15 = i2;
                                t5 = t6;
                                i13 = i28;
                                i7 = i26;
                                bArr2 = bArr;
                                i14 = i30;
                                if (i27 == 5) {
                                    unsafe2.putInt(t5, jOffset, ArrayDecoders.decodeFixed32(bArr2, i25));
                                    iDecodeUnknownField = i25 + 4;
                                    int i35 = i34 | i32;
                                    t6 = t5;
                                    i18 = i15;
                                    i20 = i13;
                                    i21 = i14;
                                    i24 = i11;
                                    i19 = i3;
                                    i22 = i35;
                                    i23 = i7;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 7:
                                i15 = i2;
                                t5 = t6;
                                i13 = i28;
                                i7 = i26;
                                bArr2 = bArr;
                                i14 = i30;
                                if (i27 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint64(bArr2, i25, registers2);
                                    UnsafeUtil.putBoolean(t5, jOffset, registers2.long1 != 0);
                                    int i352 = i34 | i32;
                                    t6 = t5;
                                    i18 = i15;
                                    i20 = i13;
                                    i21 = i14;
                                    i24 = i11;
                                    i19 = i3;
                                    i22 = i352;
                                    i23 = i7;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 8:
                                i15 = i2;
                                t5 = t6;
                                i13 = i28;
                                i7 = i26;
                                bArr2 = bArr;
                                i14 = i30;
                                if (i27 == 2) {
                                    if ((i29 & ENFORCE_UTF8_MASK) == 0) {
                                        iDecodeUnknownField = ArrayDecoders.decodeString(bArr2, i25, registers2);
                                    } else {
                                        iDecodeUnknownField = ArrayDecoders.decodeStringRequireUtf8(bArr2, i25,
                                                registers2);
                                    }
                                    unsafe2.putObject(t5, jOffset, registers2.object1);
                                    int i3522 = i34 | i32;
                                    t6 = t5;
                                    i18 = i15;
                                    i20 = i13;
                                    i21 = i14;
                                    i24 = i11;
                                    i19 = i3;
                                    i22 = i3522;
                                    i23 = i7;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 9:
                                t5 = t6;
                                i13 = i28;
                                i7 = i26;
                                i14 = i30;
                                bArr2 = bArr;
                                if (i27 == 2) {
                                    i15 = i2;
                                    iDecodeUnknownField = ArrayDecoders.decodeMessageField(
                                            messageSchema2.getMessageFieldSchema(i13), bArr2, i25, i15, registers2);
                                    if ((i34 & i32) == 0) {
                                        unsafe2.putObject(t5, jOffset, registers2.object1);
                                    } else {
                                        unsafe2.putObject(t5, jOffset, Internal
                                                .mergeMessage(unsafe2.getObject(t5, jOffset), registers2.object1));
                                    }
                                    int i35222 = i34 | i32;
                                    t6 = t5;
                                    i18 = i15;
                                    i20 = i13;
                                    i21 = i14;
                                    i24 = i11;
                                    i19 = i3;
                                    i22 = i35222;
                                    i23 = i7;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 10:
                                t3 = t6;
                                i13 = i28;
                                i7 = i26;
                                i14 = i30;
                                bArr2 = bArr;
                                if (i27 == 2) {
                                    iDecodeUnknownField = ArrayDecoders.decodeBytes(bArr2, i25, registers2);
                                    unsafe2.putObject(t3, jOffset, registers2.object1);
                                    i22 = i34 | i32;
                                    i18 = i2;
                                    t6 = t3;
                                    i20 = i13;
                                    i21 = i14;
                                    i23 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 12:
                                t3 = t6;
                                i13 = i28;
                                i7 = i26;
                                i14 = i30;
                                bArr2 = bArr;
                                if (i27 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, i25, registers2);
                                    int i36 = registers2.int1;
                                    Internal.EnumVerifier enumFieldVerifier = messageSchema2.getEnumFieldVerifier(i13);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i36)) {
                                        unsafe2.putInt(t3, jOffset, i36);
                                        i22 = i34 | i32;
                                        i18 = i2;
                                        t6 = t3;
                                        i20 = i13;
                                        i21 = i14;
                                        i23 = i7;
                                        i24 = i11;
                                        i19 = i3;
                                    } else {
                                        getMutableUnknownFields(t).storeField(i14, Long.valueOf(i36));
                                        i18 = i2;
                                        t6 = t3;
                                        i22 = i34;
                                        i20 = i13;
                                        i21 = i14;
                                        i23 = i7;
                                        i24 = i11;
                                        i19 = i3;
                                    }
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 15:
                                i13 = i28;
                                i14 = i30;
                                bArr2 = bArr;
                                i7 = i26;
                                if (i27 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, i25, registers2);
                                    t3 = t;
                                    unsafe2.putInt(t3, jOffset, CodedInputStream.decodeZigZag32(registers2.int1));
                                    i22 = i34 | i32;
                                    i18 = i2;
                                    t6 = t3;
                                    i20 = i13;
                                    i21 = i14;
                                    i23 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                } else {
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 16:
                                i13 = i28;
                                i7 = i26;
                                if (i27 == 0) {
                                    bArr2 = bArr;
                                    int iDecodeVarint642 = ArrayDecoders.decodeVarint64(bArr2, i25, registers2);
                                    i14 = i30;
                                    unsafe2.putLong(t, jOffset, CodedInputStream.decodeZigZag64(registers2.long1));
                                    i22 = i34 | i32;
                                    t6 = t;
                                    i18 = i2;
                                    iDecodeUnknownField = iDecodeVarint642;
                                    i20 = i13;
                                    i21 = i14;
                                    i23 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                } else {
                                    i14 = i30;
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            case 17:
                                if (i27 == 3) {
                                    iDecodeUnknownField = ArrayDecoders.decodeGroupField(
                                            messageSchema2.getMessageFieldSchema(i28), bArr, i25, i2, (i26 << 3) | 4,
                                            registers);
                                    if ((i34 & i32) == 0) {
                                        unsafe2.putObject(t6, jOffset, registers2.object1);
                                    } else {
                                        unsafe2.putObject(t6, jOffset, Internal
                                                .mergeMessage(unsafe2.getObject(t6, jOffset), registers2.object1));
                                    }
                                    i22 = i34 | i32;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i3;
                                    i21 = i30;
                                    i20 = i28;
                                    i23 = i26;
                                    i24 = i11;
                                } else {
                                    i13 = i28;
                                    i7 = i26;
                                    i14 = i30;
                                    i8 = i25;
                                    i10 = i34;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                }
                                break;
                            default:
                                i13 = i28;
                                i14 = i30;
                                i7 = i26;
                                i8 = i25;
                                i10 = i34;
                                i12 = i13;
                                unsafe = unsafe2;
                                i9 = i14;
                                i4 = i3;
                                break;
                        }
                    } else {
                        i7 = i26;
                        T t9 = t6;
                        bArr2 = bArr;
                        if (iType != 27) {
                            i12 = i28;
                            i10 = i22;
                            i11 = i24;
                            if (iType <= 49) {
                                int i37 = i25;
                                unsafe = unsafe2;
                                i17 = i30;
                                iDecodeUnknownField = parseRepeatedField(t, bArr, i25, i2, i30, i7, i27, i12, i29,
                                        iType, jOffset, registers);
                                if (iDecodeUnknownField != i37) {
                                    messageSchema2 = this;
                                    t6 = t;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i3;
                                    registers2 = registers;
                                    i23 = i7;
                                    i21 = i17;
                                    i20 = i12;
                                    i22 = i10;
                                    i24 = i11;
                                    unsafe2 = unsafe;
                                } else {
                                    i4 = i3;
                                    i8 = iDecodeUnknownField;
                                    i9 = i17;
                                }
                            } else {
                                i16 = i25;
                                unsafe = unsafe2;
                                i17 = i30;
                                if (iType != 50) {
                                    iDecodeUnknownField = parseOneofField(t, bArr, i16, i2, i17, i7, i27, i29, iType,
                                            jOffset, i12, registers);
                                    if (iDecodeUnknownField != i16) {
                                        messageSchema2 = this;
                                        t6 = t;
                                        bArr2 = bArr;
                                        i18 = i2;
                                        i19 = i3;
                                        registers2 = registers;
                                        i23 = i7;
                                        i21 = i17;
                                        i20 = i12;
                                        i22 = i10;
                                        i24 = i11;
                                        unsafe2 = unsafe;
                                    } else {
                                        i4 = i3;
                                        i8 = iDecodeUnknownField;
                                        i9 = i17;
                                    }
                                } else if (i27 == 2) {
                                    iDecodeUnknownField = parseMapField(t, bArr, i16, i2, i12, jOffset, registers);
                                    if (iDecodeUnknownField != i16) {
                                        messageSchema2 = this;
                                        t6 = t;
                                        bArr2 = bArr;
                                        i18 = i2;
                                        i19 = i3;
                                        registers2 = registers;
                                        i23 = i7;
                                        i21 = i17;
                                        i20 = i12;
                                        i22 = i10;
                                        i24 = i11;
                                        unsafe2 = unsafe;
                                    } else {
                                        i4 = i3;
                                        i8 = iDecodeUnknownField;
                                        i9 = i17;
                                    }
                                }
                            }
                        } else if (i27 == 2) {
                            Internal.ProtobufList<?> protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList<?>) unsafe2
                                    .getObject(t9, jOffset);
                            if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
                                int size = protobufListMutableCopyWithCapacity2.size();
                                protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2
                                        .mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                                unsafe2.putObject(t9, jOffset, protobufListMutableCopyWithCapacity2);
                            }
                            i11 = i24;
                            iDecodeUnknownField = ArrayDecoders.decodeMessageList(
                                    messageSchema2.getMessageFieldSchema(i28), i30, bArr, i25, i2,
                                    (Internal.ProtobufList<Object>) protobufListMutableCopyWithCapacity2, registers);
                            t6 = t;
                            i18 = i2;
                            i21 = i30;
                            i23 = i7;
                            i20 = i28;
                            i22 = i22;
                            i24 = i11;
                            i19 = i3;
                        } else {
                            i12 = i28;
                            i10 = i22;
                            i11 = i24;
                            i16 = i25;
                            unsafe = unsafe2;
                            i17 = i30;
                        }
                        i4 = i3;
                        i8 = i16;
                        i9 = i17;
                    }
                }
                if (i9 != i4 || i4 == 0) {
                    if (this.hasExtensions && registers.extensionRegistry != ExtensionRegistryLite.getEmptyRegistry()) {
                        iDecodeUnknownField = ArrayDecoders.decodeExtensionOrUnknownField(i9, bArr, i8, i2, t,
                                this.defaultInstance, (UnknownFieldSchema) this.unknownFieldSchema, registers);
                    } else {
                        iDecodeUnknownField = ArrayDecoders.decodeUnknownField(i9, bArr, i8, i2,
                                getMutableUnknownFields(t), registers);
                    }
                    t6 = t;
                    bArr2 = bArr;
                    i18 = i2;
                    i21 = i9;
                    messageSchema2 = this;
                    registers2 = registers;
                    i23 = i7;
                    i20 = i12;
                    i22 = i10;
                    i24 = i11;
                    unsafe2 = unsafe;
                    i19 = i4;
                } else {
                    i5 = 1048575;
                    messageSchema = this;
                    iDecodeUnknownField = i8;
                    i21 = i9;
                    i22 = i10;
                    i24 = i11;
                }
            } else {
                unsafe = unsafe2;
                i4 = i19;
                messageSchema = messageSchema2;
                i5 = 1048575;
                break;
            }
        }
        if (i24 != i5) {
            t2 = t;
            unsafe.putInt(t2, i24, i22);
        } else {
            t2 = t;
        }
        Object unknownFieldSetLite = null;
        for (int i38 = messageSchema.checkInitializedCount; i38 < messageSchema.repeatedFieldOffsetStart; i38++) {
            unknownFieldSetLite = messageSchema.filterMapUnknownEnumValues(t2,
                    messageSchema.intArray[i38], unknownFieldSetLite,
                    (UnknownFieldSchema) messageSchema.unknownFieldSchema);
        }
        if (unknownFieldSetLite != null) {
            ((UnknownFieldSchema) messageSchema.unknownFieldSchema).setBuilderToMessage(t2, unknownFieldSetLite);
        }
        if (i4 == 0) {
            if (iDecodeUnknownField != i2) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (iDecodeUnknownField > i2 || i21 != i4) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return iDecodeUnknownField;
    }

    /*
     * JADX WARN: Code restructure failed: missing block: B:103:0x028e, code lost:
     * 
     * if (r0 != r15) goto L104;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:104:0x0290, code lost:
     * 
     * r15 = r30;
     * r14 = r31;
     * r12 = r32;
     * r13 = r34;
     * r11 = r35;
     * r10 = r18;
     * r1 = r19;
     * r2 = r20;
     * r6 = r24;
     * r7 = r25;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:110:0x02d7, code lost:
     * 
     * if (r0 != r15) goto L104;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:115:0x02fa, code lost:
     * 
     * if (r0 != r15) goto L104;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:117:0x02fd, code lost:
     * 
     * r2 = r0;
     */
    /*
     * JADX WARN: Failed to find 'out' block for switch in B:27:0x0093. Please
     * report as an issue.
     */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    private int parseProto3Message(T t, byte[] bArr, int i, int i2, ArrayDecoders.Registers registers)
            throws IOException {
        int i3 = 0;
        int iDecodeVarint32 = 0;
        int iPositionForFieldNumber = 0;
        int i4 = 0;
        int i5 = 0;
        Unsafe unsafe = null;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        Unsafe unsafe2 = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int iDecodeVarint64 = 0;
        int i12 = 0;
        Unsafe unsafe3 = null;
        MessageSchema<T> messageSchema = this;
        T t2 = t;
        byte[] bArr2 = bArr;
        int i13 = i2;
        ArrayDecoders.Registers registers2 = registers;
        Unsafe unsafe4 = UNSAFE;
        int i14 = -1;
        int iDecodeUnknownField = i;
        int i15 = -1;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1048575;
        while (iDecodeUnknownField < i13) {
            int i19 = iDecodeUnknownField + 1;
            byte b = bArr2[iDecodeUnknownField];
            if (b < 0) {
                iDecodeVarint32 = ArrayDecoders.decodeVarint32(b, bArr2, i19, registers2);
                i3 = registers2.int1;
            } else {
                i3 = b;
                iDecodeVarint32 = i19;
            }
            int i20 = i3 >>> 3;
            int i21 = i3 & 7;
            if (i20 > i15) {
                iPositionForFieldNumber = messageSchema.positionForFieldNumber(i20, i16 / 3);
            } else {
                iPositionForFieldNumber = messageSchema.positionForFieldNumber(i20);
            }
            int i22 = iPositionForFieldNumber;
            if (i22 == i14) {
                i4 = iDecodeVarint32;
                i5 = i20;
                unsafe = unsafe4;
                i6 = i14;
                i7 = 0;
            } else {
                int i23 = messageSchema.buffer[i22 + 1];
                int iType = type(i23);
                Unsafe unsafe5 = unsafe4;
                long jOffset = offset(i23);
                if (iType <= 17) {
                    int i24 = messageSchema.buffer[i22 + 2];
                    int i25 = 1 << (i24 >>> 20);
                    int i26 = i24 & 1048575;
                    if (i26 != i18) {
                        if (i18 != 1048575) {
                            long j = i18;
                            unsafe3 = unsafe5;
                            unsafe3.putInt(t2, j, i17);
                        } else {
                            unsafe3 = unsafe5;
                        }
                        if (i26 != 1048575) {
                            i17 = unsafe3.getInt(t2, i26);
                        }
                        unsafe2 = unsafe3;
                        i18 = i26;
                    } else {
                        unsafe2 = unsafe5;
                    }
                    switch (iType) {
                        case 0:
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 1) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                UnsafeUtil.putDouble(t2, jOffset, ArrayDecoders.decodeDouble(bArr2, iDecodeVarint32));
                                iDecodeUnknownField = iDecodeVarint32 + 8;
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i16 = i8;
                                i15 = i5;
                                i14 = -1;
                                i13 = i2;
                            }
                            break;
                        case 1:
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 5) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                UnsafeUtil.putFloat(t2, jOffset, ArrayDecoders.decodeFloat(bArr2, iDecodeVarint32));
                                iDecodeUnknownField = iDecodeVarint32 + 4;
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i16 = i8;
                                i15 = i5;
                                i14 = -1;
                                i13 = i2;
                            }
                            break;
                        case 2:
                        case 3:
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 0) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr2, iDecodeVarint32, registers2);
                                unsafe2.putLong(t, jOffset, registers2.long1);
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i16 = i8;
                                iDecodeUnknownField = iDecodeVarint64;
                                i15 = i5;
                                i14 = -1;
                                i13 = i2;
                            }
                            break;
                        case 4:
                        case 11:
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 0) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, iDecodeVarint32, registers2);
                                unsafe2.putInt(t2, jOffset, registers2.int1);
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i16 = i8;
                                i15 = i5;
                                i14 = -1;
                                i13 = i2;
                            }
                            break;
                        case 5:
                        case 14:
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 1) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                unsafe2.putLong(t, jOffset, ArrayDecoders.decodeFixed64(bArr2, iDecodeVarint32));
                                iDecodeUnknownField = iDecodeVarint32 + 8;
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i16 = i8;
                                i15 = i5;
                                i14 = -1;
                                i13 = i2;
                            }
                            break;
                        case 6:
                        case 13:
                            i12 = i2;
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 5) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                unsafe2.putInt(t2, jOffset, ArrayDecoders.decodeFixed32(bArr2, iDecodeVarint32));
                                iDecodeUnknownField = iDecodeVarint32 + 4;
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i15 = i5;
                                i14 = -1;
                                int i27 = i8;
                                i13 = i12;
                                i16 = i27;
                            }
                            break;
                        case 7:
                            i12 = i2;
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 0) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iDecodeUnknownField = ArrayDecoders.decodeVarint64(bArr2, iDecodeVarint32, registers2);
                                UnsafeUtil.putBoolean(t2, jOffset, registers2.long1 != 0);
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i15 = i5;
                                i14 = -1;
                                int i272 = i8;
                                i13 = i12;
                                i16 = i272;
                            }
                            break;
                        case 8:
                            i12 = i2;
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 2) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                if ((i23 & ENFORCE_UTF8_MASK) == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeString(bArr2, iDecodeVarint32,
                                            registers2);
                                } else {
                                    iDecodeUnknownField = ArrayDecoders.decodeStringRequireUtf8(bArr2, iDecodeVarint32,
                                            registers2);
                                }
                                unsafe2.putObject(t2, jOffset, registers2.object1);
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i15 = i5;
                                i14 = -1;
                                int i2722 = i8;
                                i13 = i12;
                                i16 = i2722;
                            }
                            break;
                        case 9:
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 2) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                i12 = i2;
                                iDecodeUnknownField = ArrayDecoders.decodeMessageField(
                                        messageSchema.getMessageFieldSchema(i8), bArr2, iDecodeVarint32, i12,
                                        registers2);
                                Object object = unsafe2.getObject(t2, jOffset);
                                if (object == null) {
                                    unsafe2.putObject(t2, jOffset, registers2.object1);
                                } else {
                                    unsafe2.putObject(t2, jOffset, Internal.mergeMessage(object, registers2.object1));
                                }
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i15 = i5;
                                i14 = -1;
                                int i27222 = i8;
                                i13 = i12;
                                i16 = i27222;
                            }
                            break;
                        case 10:
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 2) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iDecodeUnknownField = ArrayDecoders.decodeBytes(bArr2, iDecodeVarint32, registers2);
                                unsafe2.putObject(t2, jOffset, registers2.object1);
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i16 = i8;
                                i15 = i5;
                                i14 = -1;
                                i13 = i2;
                            }
                            break;
                        case 12:
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 0) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, iDecodeVarint32, registers2);
                                unsafe2.putInt(t2, jOffset, registers2.int1);
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i16 = i8;
                                i15 = i5;
                                i14 = -1;
                                i13 = i2;
                            }
                            break;
                        case 15:
                            i8 = i22;
                            i5 = i20;
                            if (i21 != 0) {
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, iDecodeVarint32, registers2);
                                unsafe2.putInt(t2, jOffset, CodedInputStream.decodeZigZag32(registers2.int1));
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i16 = i8;
                                i15 = i5;
                                i14 = -1;
                                i13 = i2;
                            }
                            break;
                        case 16:
                            if (i21 != 0) {
                                i8 = i22;
                                i5 = i20;
                                i4 = iDecodeVarint32;
                                unsafe = unsafe2;
                                i7 = i8;
                                i6 = -1;
                            } else {
                                iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr2, iDecodeVarint32, registers2);
                                i8 = i22;
                                i5 = i20;
                                unsafe2.putLong(t, jOffset, CodedInputStream.decodeZigZag64(registers2.long1));
                                i17 |= i25;
                                unsafe4 = unsafe2;
                                i16 = i8;
                                iDecodeUnknownField = iDecodeVarint64;
                                i15 = i5;
                                i14 = -1;
                                i13 = i2;
                            }
                            break;
                        default:
                            i8 = i22;
                            i5 = i20;
                            i4 = iDecodeVarint32;
                            unsafe = unsafe2;
                            i7 = i8;
                            i6 = -1;
                            break;
                    }
                } else {
                    i5 = i20;
                    i8 = i22;
                    unsafe2 = unsafe5;
                    if (iType != 27) {
                        if (iType <= 49) {
                            int i28 = iDecodeVarint32;
                            i10 = i17;
                            i11 = i18;
                            unsafe = unsafe2;
                            i6 = -1;
                            i7 = i8;
                            iDecodeUnknownField = parseRepeatedField(t, bArr, iDecodeVarint32, i2, i3, i5, i21, i8, i23,
                                    iType, jOffset, registers);
                        } else {
                            i9 = iDecodeVarint32;
                            i10 = i17;
                            i11 = i18;
                            unsafe = unsafe2;
                            i7 = i8;
                            i6 = -1;
                            if (iType != 50) {
                                iDecodeUnknownField = parseOneofField(t, bArr, i9, i2, i3, i5, i21, i23, iType, jOffset,
                                        i7, registers);
                            } else if (i21 == 2) {
                                iDecodeUnknownField = parseMapField(t, bArr, i9, i2, i7, jOffset, registers);
                            }
                        }
                        unsafe4 = unsafe;
                    } else if (i21 == 2) {
                        Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe2
                                .getObject(t2, jOffset);
                        if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
                            int size = protobufListMutableCopyWithCapacity2.size();
                            protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2
                                    .mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                            unsafe2.putObject(t2, jOffset, protobufListMutableCopyWithCapacity2);
                        }
                        iDecodeUnknownField = ArrayDecoders.decodeMessageList(messageSchema.getMessageFieldSchema(i8),
                                i3, bArr, iDecodeVarint32, i2, protobufListMutableCopyWithCapacity2, registers);
                        i17 = i17;
                        unsafe4 = unsafe2;
                        i16 = i8;
                        i15 = i5;
                        i14 = -1;
                        i13 = i2;
                    } else {
                        i9 = iDecodeVarint32;
                        i10 = i17;
                        i11 = i18;
                        unsafe = unsafe2;
                        i7 = i8;
                        i6 = -1;
                    }
                    i4 = i9;
                    i17 = i10;
                    i18 = i11;
                }
            }
            iDecodeUnknownField = ArrayDecoders.decodeUnknownField(i3, bArr, i4, i2, getMutableUnknownFields(t),
                    registers);
            messageSchema = this;
            t2 = t;
            bArr2 = bArr;
            i13 = i2;
            registers2 = registers;
            i14 = i6;
            i15 = i5;
            i16 = i7;
            unsafe4 = unsafe;
        }
        int i29 = i17;
        Unsafe unsafe6 = unsafe4;
        if (i18 != 1048575) {
            unsafe6.putInt(t, i18, i29);
        }
        if (iDecodeUnknownField == i2) {
            return iDecodeUnknownField;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    @Override // com.google.oplus.protobuf.Schema
    public void mergeFrom(T t, byte[] bArr, int i, int i2, ArrayDecoders.Registers registers) throws IOException {
        if (this.proto3) {
            parseProto3Message(t, bArr, i, i2, registers);
        } else {
            parseProto2Message(t, bArr, i, i2, 0, registers);
        }
    }

    @Override // com.google.oplus.protobuf.Schema
    public void makeImmutable(T t) {
        int i;
        int i2 = this.checkInitializedCount;
        while (true) {
            i = this.repeatedFieldOffsetStart;
            if (i2 >= i) {
                break;
            }
            long jOffset = offset(typeAndOffsetAt(this.intArray[i2]));
            Object object = UnsafeUtil.getObject(t, jOffset);
            if (object != null) {
                UnsafeUtil.putObject(t, jOffset, this.mapFieldSchema.toImmutable(object));
            }
            i2++;
        }
        int length = this.intArray.length;
        while (i < length) {
            this.listFieldSchema.makeImmutableListAt(t, this.intArray[i]);
            i++;
        }
        this.unknownFieldSchema.makeImmutable(t);
        if (this.hasExtensions) {
            this.extensionSchema.makeImmutable(t);
        }
    }

    private final <K, V> void mergeMap(Object obj, int i, Object obj2, ExtensionRegistryLite extensionRegistryLite,
            Reader reader) throws IOException {
        long jOffset = offset(typeAndOffsetAt(i));
        Object object = UnsafeUtil.getObject(obj, jOffset);
        if (object == null) {
            object = this.mapFieldSchema.newMapField(obj2);
            UnsafeUtil.putObject(obj, jOffset, object);
        } else if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(obj2);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            UnsafeUtil.putObject(obj, jOffset, objNewMapField);
            object = objNewMapField;
        }
        reader.readMap((Map<K, V>) this.mapFieldSchema.forMutableMapData(object),
                (MapEntryLite.Metadata<K, V>) this.mapFieldSchema.forMapMetadata(obj2), extensionRegistryLite);
    }

    /*
     * JADX DEBUG: Type inference failed for r3v0. Raw type applied. Possible types:
     * java.util.Map<?, ?>, java.util.Map<K, V>
     */
    private final <UT, UB> UB filterMapUnknownEnumValues(Object obj, int i, UB ub,
            UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        Internal.EnumVerifier enumFieldVerifier;
        int iNumberAt = numberAt(i);
        Object object = UnsafeUtil.getObject(obj, offset(typeAndOffsetAt(i)));
        return (object == null || (enumFieldVerifier = getEnumFieldVerifier(i)) == null) ? ub
                : (UB) filterUnknownEnumMap(i, iNumberAt, this.mapFieldSchema.forMutableMapData(object),
                        enumFieldVerifier, ub, unknownFieldSchema);
    }

    private final <K, V, UT, UB> UB filterUnknownEnumMap(int i, int i2, Map<K, V> map,
            Internal.EnumVerifier enumVerifier, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        MapEntryLite.Metadata<?, ?> metadataForMapMetadata = this.mapFieldSchema
                .forMapMetadata(getMapFieldDefaultEntry(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = unknownFieldSchema.newBuilder();
                }
                ByteString.CodedBuilder codedBuilderNewCodedBuilder = ByteString.newCodedBuilder(
                        MapEntryLite.computeSerializedSize((MapEntryLite.Metadata<K, V>) metadataForMapMetadata,
                                next.getKey(), next.getValue()));
                try {
                    MapEntryLite.writeTo(codedBuilderNewCodedBuilder.getCodedOutput(),
                            (MapEntryLite.Metadata<K, V>) metadataForMapMetadata, next.getKey(), next.getValue());
                    unknownFieldSchema.addLengthDelimited(ub, i2, codedBuilderNewCodedBuilder.build());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0089 */
    @Override // com.google.oplus.protobuf.Schema
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    public final boolean isInitialized(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.checkInitializedCount) {
            int i6 = this.intArray[i5];
            int iNumberAt = numberAt(i6);
            int iTypeAndOffsetAt = typeAndOffsetAt(i6);
            int i7 = this.buffer[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i3) {
                if (i8 != 1048575) {
                    i4 = UNSAFE.getInt(t, i8);
                }
                i2 = i4;
                i = i8;
            } else {
                i = i3;
                i2 = i4;
            }
            if (isRequired(iTypeAndOffsetAt) && !isFieldPresent(t, i6, i, i2, i9)) {
                return false;
            }
            int iType = type(iTypeAndOffsetAt);
            if (iType == 9 || iType == 17) {
                if (isFieldPresent(t, i6, i, i2, i9)
                        && !isInitialized(t, iTypeAndOffsetAt, getMessageFieldSchema(i6))) {
                    return false;
                }
            } else if (iType == 27) {
                if (!isListInitialized(t, iTypeAndOffsetAt, i6)) {
                    return false;
                }
            } else if (iType == 60 || iType == 68) {
                if (isOneofPresent(t, iNumberAt, i6)
                        && !isInitialized(t, iTypeAndOffsetAt, getMessageFieldSchema(i6))) {
                    return false;
                }
            } else if (iType != 49) {
                if (iType == 50 && !isMapInitialized(t, iTypeAndOffsetAt, i6)) {
                    return false;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(t).isInitialized();
    }

    /*
     * JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type:
     * com.google.oplus.protobuf.Schema
     */
    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isInitialized(Object obj, int i, Schema schema) {
        return schema.isInitialized(UnsafeUtil.getObject(obj, offset(i)));
    }

    /*
     * JADX DEBUG: Multi-variable search result rejected for r2v1, resolved type:
     * com.google.oplus.protobuf.Schema
     */
    /* JADX WARN: Multi-variable type inference failed */
    private <E> boolean isListInitialized(Object obj, int i, int i2) {
        List<E> list = listAt(obj, offset(i));
        if (list.isEmpty()) {
            return true;
        }
        Schema messageFieldSchema = getMessageFieldSchema(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!messageFieldSchema.isInitialized(list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    /*
     * JADX DEBUG: Failed to insert an additional move for type inference into block
     * B:21:?
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /*
     * JADX WARN: Type inference failed for: r3v7, types:
     * [com.google.oplus.protobuf.Schema]
     */
    private boolean isMapInitialized(T t, int i, int i2) {
        Map<?, ?> mapForMapData = this.mapFieldSchema.forMapData(UnsafeUtil.getObject(t, offset(i)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2)).valueType
                .getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        Schema schemaFor = null;
        for (Object obj : mapForMapData.values()) {
            if (schemaFor == null) {
                schemaFor = Protobuf.getInstance().schemaFor(obj.getClass());
            }
            if (!schemaFor.isInitialized(obj)) {
                return false;
            }
        }
        return true;
    }

    private void writeString(int i, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.writeString(i, (String) obj);
        } else {
            writer.writeBytes(i, (ByteString) obj);
        }
    }

    private void readString(Object obj, int i, Reader reader) throws IOException {
        if (isEnforceUtf8(i)) {
            UnsafeUtil.putObject(obj, offset(i), reader.readStringRequireUtf8());
        } else if (this.lite) {
            UnsafeUtil.putObject(obj, offset(i), reader.readString());
        } else {
            UnsafeUtil.putObject(obj, offset(i), reader.readBytes());
        }
    }

    private void readStringList(Object obj, int i, Reader reader) throws IOException {
        if (isEnforceUtf8(i)) {
            reader.readStringListRequireUtf8(this.listFieldSchema.mutableListAt(obj, offset(i)));
        } else {
            reader.readStringList(this.listFieldSchema.mutableListAt(obj, offset(i)));
        }
    }

    private <E> void readMessageList(Object obj, int i, Reader reader, Schema<E> schema,
            ExtensionRegistryLite extensionRegistryLite) throws IOException {
        reader.readMessageList(this.listFieldSchema.mutableListAt(obj, offset(i)), schema, extensionRegistryLite);
    }

    private <E> void readGroupList(Object obj, long j, Reader reader, Schema<E> schema,
            ExtensionRegistryLite extensionRegistryLite) throws IOException {
        reader.readGroupList(this.listFieldSchema.mutableListAt(obj, j), schema, extensionRegistryLite);
    }

    private int numberAt(int i) {
        return this.buffer[i];
    }

    private int typeAndOffsetAt(int i) {
        return this.buffer[i + 1];
    }

    private int presenceMaskAndOffsetAt(int i) {
        return this.buffer[i + 2];
    }

    private static <T> double doubleAt(T t, long j) {
        return UnsafeUtil.getDouble(t, j);
    }

    private static <T> float floatAt(T t, long j) {
        return UnsafeUtil.getFloat(t, j);
    }

    private static <T> int intAt(T t, long j) {
        return UnsafeUtil.getInt(t, j);
    }

    private static <T> long longAt(T t, long j) {
        return UnsafeUtil.getLong(t, j);
    }

    private static <T> boolean booleanAt(T t, long j) {
        return UnsafeUtil.getBoolean(t, j);
    }

    private static <T> double oneofDoubleAt(T t, long j) {
        return ((Double) UnsafeUtil.getObject(t, j)).doubleValue();
    }

    private static <T> float oneofFloatAt(T t, long j) {
        return ((Float) UnsafeUtil.getObject(t, j)).floatValue();
    }

    private static <T> int oneofIntAt(T t, long j) {
        return ((Integer) UnsafeUtil.getObject(t, j)).intValue();
    }

    private static <T> long oneofLongAt(T t, long j) {
        return ((Long) UnsafeUtil.getObject(t, j)).longValue();
    }

    private static <T> boolean oneofBooleanAt(T t, long j) {
        return ((Boolean) UnsafeUtil.getObject(t, j)).booleanValue();
    }

    private boolean arePresentForEquals(T t, T t2, int i) {
        return isFieldPresent(t, i) == isFieldPresent(t2, i);
    }

    private boolean isFieldPresent(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return isFieldPresent(t, i);
        }
        return (i3 & i4) != 0;
    }

    private boolean isFieldPresent(T t, int i) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
        long j = 1048575 & iPresenceMaskAndOffsetAt;
        if (j != 1048575) {
            return ((1 << (iPresenceMaskAndOffsetAt >>> 20)) & UnsafeUtil.getInt(t, j)) != 0;
        }
        int iTypeAndOffsetAt = typeAndOffsetAt(i);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return Double.doubleToRawLongBits(UnsafeUtil.getDouble(t, jOffset)) != 0;
            case 1:
                return Float.floatToRawIntBits(UnsafeUtil.getFloat(t, jOffset)) != 0;
            case 2:
                return UnsafeUtil.getLong(t, jOffset) != 0;
            case 3:
                return UnsafeUtil.getLong(t, jOffset) != 0;
            case 4:
                return UnsafeUtil.getInt(t, jOffset) != 0;
            case 5:
                return UnsafeUtil.getLong(t, jOffset) != 0;
            case 6:
                return UnsafeUtil.getInt(t, jOffset) != 0;
            case 7:
                return UnsafeUtil.getBoolean(t, jOffset);
            case 8:
                Object object = UnsafeUtil.getObject(t, jOffset);
                if (object instanceof String) {
                    return !((String) object).isEmpty();
                }
                if (object instanceof ByteString) {
                    return !ByteString.EMPTY.equals(object);
                }
                throw new IllegalArgumentException();
            case 9:
                return UnsafeUtil.getObject(t, jOffset) != null;
            case 10:
                return !ByteString.EMPTY.equals(UnsafeUtil.getObject(t, jOffset));
            case 11:
                return UnsafeUtil.getInt(t, jOffset) != 0;
            case 12:
                return UnsafeUtil.getInt(t, jOffset) != 0;
            case 13:
                return UnsafeUtil.getInt(t, jOffset) != 0;
            case 14:
                return UnsafeUtil.getLong(t, jOffset) != 0;
            case 15:
                return UnsafeUtil.getInt(t, jOffset) != 0;
            case 16:
                return UnsafeUtil.getLong(t, jOffset) != 0;
            case 17:
                return UnsafeUtil.getObject(t, jOffset) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private void setFieldPresent(T t, int i) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
        long j = 1048575 & iPresenceMaskAndOffsetAt;
        if (j == 1048575) {
            return;
        }
        UnsafeUtil.putInt(t, j, (1 << (iPresenceMaskAndOffsetAt >>> 20)) | UnsafeUtil.getInt(t, j));
    }

    private boolean isOneofPresent(T t, int i, int i2) {
        return UnsafeUtil.getInt(t, (long) (presenceMaskAndOffsetAt(i2) & 1048575)) == i;
    }

    private boolean isOneofCaseEqual(T t, T t2, int i) {
        long jPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i) & 1048575;
        return UnsafeUtil.getInt(t, jPresenceMaskAndOffsetAt) == UnsafeUtil.getInt(t2, jPresenceMaskAndOffsetAt);
    }

    private void setOneofPresent(T t, int i, int i2) {
        UnsafeUtil.putInt(t, presenceMaskAndOffsetAt(i2) & 1048575, i);
    }

    private int positionForFieldNumber(int i) {
        if (i < this.minFieldNumber || i > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i, 0);
    }

    private int positionForFieldNumber(int i, int i2) {
        if (i < this.minFieldNumber || i > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i, i2);
    }

    private int slowPositionForFieldNumber(int i, int i2) {
        int length = (this.buffer.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int iNumberAt = numberAt(i4);
            if (i == iNumberAt) {
                return i4;
            }
            if (i < iNumberAt) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    int getSchemaSize() {
        return this.buffer.length * 3;
    }
}
