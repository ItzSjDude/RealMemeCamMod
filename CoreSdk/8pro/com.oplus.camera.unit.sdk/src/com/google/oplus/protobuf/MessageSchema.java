package com.google.oplus.protobuf;

import com.google.oplus.protobuf.ArrayDecoders;
import com.google.oplus.protobuf.ByteString;
import com.google.oplus.protobuf.DescriptorProtos;
import com.google.oplus.protobuf.Internal;
import com.google.oplus.protobuf.MapEntryLite;
import com.google.oplus.protobuf.WireFormat;
import com.google.oplus.protobuf.Writer;
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.ocs.camera.common.util.ApsConstant;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class MessageSchema<T> implements Schema<T> {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> MessageSchema<T> newSchema(Class<T> cls, MessageInfo messageInfo,
            NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema,
            UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema,
            MapFieldSchema mapFieldSchema) {
        if (messageInfo instanceof RawMessageInfo) {
            return newSchemaForRawMessageInfo((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema,
                    unknownFieldSchema, extensionSchema, mapFieldSchema);
        }
        return newSchemaForMessageInfo((StructuralMessageInfo) messageInfo, newInstanceSchema, listFieldSchema,
                unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    static <T> MessageSchema<T> newSchemaForRawMessageInfo(RawMessageInfo rawMessageInfo,
            NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema,
            UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema,
            MapFieldSchema mapFieldSchema) {
        String info = rawMessageInfo.getStringInfo();
        int infoLength = info.length();
        int i = 0;
        int i2 = i + 1;
        int charAt = info.charAt(i);
        if (charAt >= 55296) {
            int i3 = charAt & 8191;
            int i4 = 13;
            while (true) {
                int i5 = i2 + 1;
                int charAt2 = info.charAt(i2);
                if (charAt2 < 55296) {
                    charAt = i3 | (charAt2 << i4);
                    i2 = i5;
                    break;
                }
                i3 |= (charAt2 & 8191) << i4;
                i4 += 13;
                i2 = i5;
            }
        }
        boolean z = (charAt & 1) != 0;
        int i6 = i2 + 1;
        int charAt3 = info.charAt(i2);
        if (charAt3 >= 55296) {
            int i7 = charAt3 & 8191;
            int i8 = 13;
            while (true) {
                int i9 = i6 + 1;
                int charAt4 = info.charAt(i6);
                if (charAt4 < 55296) {
                    charAt3 = i7 | (charAt4 << i8);
                    i6 = i9;
                    break;
                }
                i7 |= (charAt4 & 8191) << i8;
                i8 += 13;
                i6 = i9;
            }
        }
        if (charAt3 == 0) {
            int[] iArr = EMPTY_INT_ARRAY;
            return new MessageSchema<>(iArr, rawMessageInfo.getObjects(), 0, 0, rawMessageInfo.getDefaultInstance(), z,
                    true, iArr, 0, 0, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema,
                    mapFieldSchema);
        }
        int i10 = i6 + 1;
        int charAt5 = info.charAt(i6);
        if (charAt5 >= 55296) {
            int i11 = charAt5 & 8191;
            int i12 = 13;
            while (true) {
                int i13 = i10 + 1;
                int charAt6 = info.charAt(i10);
                if (charAt6 < 55296) {
                    charAt5 = i11 | (charAt6 << i12);
                    i10 = i13;
                    break;
                }
                i11 |= (charAt6 & 8191) << i12;
                i12 += 13;
                i10 = i13;
            }
        }
        int i14 = i10 + 1;
        int charAt7 = info.charAt(i10);
        if (charAt7 >= 55296) {
            int i15 = charAt7 & 8191;
            int i16 = 13;
            while (true) {
                int i17 = i14 + 1;
                int charAt8 = info.charAt(i14);
                if (charAt8 < 55296) {
                    charAt7 = i15 | (charAt8 << i16);
                    i14 = i17;
                    break;
                }
                i15 |= (charAt8 & 8191) << i16;
                i16 += 13;
                i14 = i17;
            }
        }
        int i18 = i14 + 1;
        int charAt9 = info.charAt(i14);
        if (charAt9 >= 55296) {
            int i19 = charAt9 & 8191;
            int i20 = 13;
            while (true) {
                int i21 = i18 + 1;
                int charAt10 = info.charAt(i18);
                if (charAt10 < 55296) {
                    charAt9 = i19 | (charAt10 << i20);
                    i18 = i21;
                    break;
                }
                i19 |= (charAt10 & 8191) << i20;
                i20 += 13;
                i18 = i21;
            }
        }
        int i22 = i18 + 1;
        int charAt11 = info.charAt(i18);
        if (charAt11 >= 55296) {
            int i23 = charAt11 & 8191;
            int i24 = 13;
            while (true) {
                int i25 = i22 + 1;
                int charAt12 = info.charAt(i22);
                if (charAt12 < 55296) {
                    charAt11 = i23 | (charAt12 << i24);
                    i22 = i25;
                    break;
                }
                i23 |= (charAt12 & 8191) << i24;
                i24 += 13;
                i22 = i25;
            }
        }
        int i26 = i22 + 1;
        int charAt13 = info.charAt(i22);
        if (charAt13 >= 55296) {
            int i27 = charAt13 & 8191;
            int i28 = 13;
            while (true) {
                int i29 = i26 + 1;
                int charAt14 = info.charAt(i26);
                if (charAt14 < 55296) {
                    charAt13 = i27 | (charAt14 << i28);
                    i26 = i29;
                    break;
                }
                i27 |= (charAt14 & 8191) << i28;
                i28 += 13;
                i26 = i29;
            }
        }
        int i30 = i26 + 1;
        int charAt15 = info.charAt(i26);
        if (charAt15 >= 55296) {
            int i31 = charAt15 & 8191;
            int i32 = 13;
            while (true) {
                int i33 = i30 + 1;
                int charAt16 = info.charAt(i30);
                if (charAt16 < 55296) {
                    charAt15 = i31 | (charAt16 << i32);
                    i30 = i33;
                    break;
                }
                i31 |= (charAt16 & 8191) << i32;
                i32 += 13;
                i30 = i33;
            }
        }
        int i34 = i30 + 1;
        int charAt17 = info.charAt(i30);
        if (charAt17 >= 55296) {
            int i35 = charAt17 & 8191;
            int i36 = 13;
            while (true) {
                int i37 = i34 + 1;
                int charAt18 = info.charAt(i34);
                if (charAt18 < 55296) {
                    charAt17 = i35 | (charAt18 << i36);
                    i34 = i37;
                    break;
                }
                i35 |= (charAt18 & 8191) << i36;
                i36 += 13;
                i34 = i37;
            }
        }
        int i38 = i34 + 1;
        int charAt19 = info.charAt(i34);
        if (charAt19 >= 55296) {
            int i39 = charAt19 & 8191;
            int i40 = 13;
            while (true) {
                int i41 = i38 + 1;
                int charAt20 = info.charAt(i38);
                if (charAt20 < 55296) {
                    charAt19 = i39 | (charAt20 << i40);
                    i38 = i41;
                    break;
                }
                i39 |= (charAt20 & 8191) << i40;
                i40 += 13;
                i38 = i41;
            }
        }
        int i42 = charAt11 + charAt13 + charAt17;
        int[] iArr2 = new int[i42];
        int i43 = charAt3 * 2 + charAt5;
        Object[] objects = rawMessageInfo.getObjects();
        Class cls = rawMessageInfo.getDefaultInstance().getClass();
        int[] buffer = new int[charAt3 * 3];
        Object[] objects2 = new Object[charAt3 * 2];
        int i44 = i38;
        int i45 = 0;
        int i46 = 0;
        int i47 = 0;
        int i48 = 0;
        int i49 = charAt11;
        int i50 = i49 + charAt13;
        while (i44 < infoLength) {
            int i51 = i44 + 1;
            int charAt21 = info.charAt(i44);
            if (charAt21 >= 55296) {
                int i52 = charAt21 & 8191;
                int i53 = 13;
                while (true) {
                    int i54 = i51 + 1;
                    int charAt22 = info.charAt(i51);
                    if (charAt22 < 55296) {
                        charAt21 = i52 | (charAt22 << i53);
                        i51 = i54;
                        break;
                    }
                    i52 |= (charAt22 & 8191) << i53;
                    i53 += 13;
                    i51 = i54;
                }
            }
            int i55 = i51 + 1;
            int charAt23 = info.charAt(i51);
            if (charAt23 >= 55296) {
                int i56 = charAt23 & 8191;
                int i57 = 13;
                while (true) {
                    int i58 = i55 + 1;
                    int charAt24 = info.charAt(i55);
                    if (charAt24 < 55296) {
                        charAt23 = i56 | (charAt24 << i57);
                        i55 = i58;
                        break;
                    }
                    i56 |= (charAt24 & 8191) << i57;
                    i57 += 13;
                    i55 = i58;
                }
            }
            int i59 = charAt23 & 255;
            if ((charAt23 & 1024) != 0) {
                iArr2[i47] = i45;
                i47++;
            }
            if (i59 >= 51) {
                int i60 = i55 + 1;
                int charAt25 = info.charAt(i55);
                if (charAt25 >= 55296) {
                    int i61 = charAt25 & 8191;
                    int i62 = 13;
                    while (true) {
                        int i63 = i60 + 1;
                        int charAt26 = info.charAt(i60);
                        if (charAt26 < 55296) {
                            charAt25 = i61 | (charAt26 << i62);
                            i60 = i63;
                            break;
                        }
                        i61 |= (charAt26 & 8191) << i62;
                        i62 += 13;
                        i60 = i63;
                    }
                }
                int i64 = i59 - 51;
                if (i64 == 9 || i64 == 17) {
                    objects2[((i45 / 3) * 2) + 1] = objects[i43];
                    i43++;
                } else if (i64 == 12 && !z) {
                    objects2[((i45 / 3) * 2) + 1] = objects[i43];
                    i43++;
                }
                int i65 = charAt25 * 2;
                Object obj = objects[i65];
                java.lang.reflect.Field field = obj instanceof java.lang.reflect.Field ? (java.lang.reflect.Field) obj
                        : reflectField(cls, (String) obj);
                int objectFieldOffset = (int) UNSAFE.objectFieldOffset(field);
                int i66 = i65 + 1;
                Object obj2 = objects[i66];
                java.lang.reflect.Field field2 = obj2 instanceof java.lang.reflect.Field
                        ? (java.lang.reflect.Field) obj2
                        : reflectField(cls, (String) obj2);
                buffer[i45] = charAt21;
                buffer[i45 + 1] = (charAt23 << 20) | objectFieldOffset;
                buffer[i45 + 2] = (int) UNSAFE.objectFieldOffset(field2);
                i44 = i60;
            } else {
                java.lang.reflect.Field field3 = reflectField(cls, (String) objects[i43]);
                i43++;
                if (i59 == 9 || i59 == 17) {
                    objects2[((i45 / 3) * 2) + 1] = field3.getType();
                } else if (i59 == 27 || i59 == 49) {
                    objects2[((i45 / 3) * 2) + 1] = objects[i43];
                    i43++;
                } else if (i59 == 12 || i59 == 30 || i59 == 44) {
                    if (!z) {
                        objects2[((i45 / 3) * 2) + 1] = objects[i43];
                        i43++;
                    }
                } else if (i59 == 50) {
                    iArr2[i49] = i45;
                    i49++;
                    objects2[((i45 / 3) * 2)] = objects[i43];
                    i43++;
                    if ((charAt23 & 2048) != 0) {
                        objects2[((i45 / 3) * 2) + 1] = objects[i43];
                        i43++;
                    }
                }
                int objectFieldOffset2 = (int) UNSAFE.objectFieldOffset(field3);
                int i67 = (charAt23 & 4096) != 0 ? 1 : 0;
                if (i67 != 0 && i59 <= 17) {
                    int i68 = i55 + 1;
                    int charAt27 = info.charAt(i55);
                    if (charAt27 >= 55296) {
                        int i69 = charAt27 & 8191;
                        int i70 = 13;
                        while (true) {
                            int i71 = i68 + 1;
                            int charAt28 = info.charAt(i68);
                            if (charAt28 < 55296) {
                                charAt27 = i69 | (charAt28 << i70);
                                i68 = i71;
                                break;
                            }
                            i69 |= (charAt28 & 8191) << i70;
                            i70 += 13;
                            i68 = i71;
                        }
                    }
                    int i72 = charAt5 * 2 + (charAt27 / 32);
                    Object obj3 = objects[i72];
                    java.lang.reflect.Field field4 = obj3 instanceof java.lang.reflect.Field
                            ? (java.lang.reflect.Field) obj3
                            : reflectField(cls, (String) obj3);
                    buffer[i45] = charAt21;
                    buffer[i45 + 1] = (charAt23 << 20) | objectFieldOffset2;
                    buffer[i45 + 2] = (int) UNSAFE.objectFieldOffset(field4) | ((charAt27 % 32) << 20);
                    i44 = i68;
                } else {
                    buffer[i45] = charAt21;
                    buffer[i45 + 1] = (charAt23 << 20) | objectFieldOffset2;
                    if (i59 >= 18 && i59 <= 49) {
                        iArr2[i50] = objectFieldOffset2;
                        i50++;
                    }
                    i44 = i55;
                }
            }
            i45 += 3;
        }
        return new MessageSchema<>(buffer, objects2, charAt7, charAt9, rawMessageInfo.getDefaultInstance(), z, true,
                iArr2, charAt11, charAt11 + charAt13, newInstanceSchema, listFieldSchema, unknownFieldSchema,
                extensionSchema, mapFieldSchema);
    }

    private static java.lang.reflect.Field reflectField(Class<?> cls, String str) {
        java.lang.reflect.Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            for (java.lang.reflect.Field field : cls.getDeclaredFields()) {
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
            } else if (fieldInfo2.getType().id() >= 18 && fieldInfo2.getType().id() <= 49) {
                i = i5;
                iArr3[i8] = (int) UnsafeUtil.objectFieldOffset(fieldInfo2.getField());
                i8++;
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

    private static void storeFieldData(FieldInfo fieldInfo, int[] buffer, int pos, Object[] objects) {
        int fieldTypeAndOffset;
        int presenceOrCachedSizeOffset;
        int presenceMaskShift;
        int typeId;
        OneofInfo oneof = fieldInfo.getOneof();
        if (oneof != null) {
            typeId = fieldInfo.getType().id() + 51;
            fieldTypeAndOffset = (int) UnsafeUtil.objectFieldOffset(oneof.getValueField());
            presenceOrCachedSizeOffset = (int) UnsafeUtil.objectFieldOffset(oneof.getCaseField());
            presenceMaskShift = 0;
        } else {
            FieldType fieldType = fieldInfo.getType();
            fieldTypeAndOffset = (int) UnsafeUtil.objectFieldOffset(fieldInfo.getField());
            typeId = fieldType.id();
            if (fieldType.isList() || fieldType.isMap()) {
                java.lang.reflect.Field cachedSizeField = fieldInfo.getCachedSizeField();
                if (cachedSizeField == null) {
                    presenceOrCachedSizeOffset = 0;
                    presenceMaskShift = 0;
                } else {
                    presenceOrCachedSizeOffset = (int) UnsafeUtil.objectFieldOffset(cachedSizeField);
                    presenceMaskShift = 0;
                }
            } else {
                java.lang.reflect.Field presenceField = fieldInfo.getPresenceField();
                if (presenceField == null) {
                    presenceOrCachedSizeOffset = 1048575;
                } else {
                    presenceOrCachedSizeOffset = (int) UnsafeUtil.objectFieldOffset(presenceField);
                }
                presenceMaskShift = Integer.numberOfTrailingZeros(fieldInfo.getPresenceMask());
            }
        }
        buffer[pos] = fieldInfo.getFieldNumber();
        buffer[pos + 1] = (fieldTypeAndOffset) | (typeId << 20) | (fieldInfo.isEnforceUtf8() ? 536870912 : 0)
                | (fieldInfo.isRequired() ? 268435456 : 0);
        buffer[pos + 2] = presenceOrCachedSizeOffset | (presenceMaskShift << 20);
        java.lang.Class messageFieldClass = fieldInfo.getMessageFieldClass();
        Object mapDefaultEntry = fieldInfo.getMapDefaultEntry();
        if (mapDefaultEntry != null) {
            int i = (pos / 3) * 2;
            objects[i] = mapDefaultEntry;
            if (messageFieldClass != null) {
                objects[i + 1] = messageFieldClass;
            } else if (fieldInfo.getEnumVerifier() != null) {
                objects[i + 1] = fieldInfo.getEnumVerifier();
            }
        } else if (messageFieldClass != null) {
            int i2 = (pos / 3) * 2;
            objects[i2 + 1] = messageFieldClass;
        } else if (fieldInfo.getEnumVerifier() != null) {
            int i3 = (pos / 3) * 2;
            objects[i3 + 1] = fieldInfo.getEnumVerifier();
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
        if (this.unknownFieldSchema.getFromMessage(t).equals(this.unknownFieldSchema.getFromMessage(t2))) {
            if (this.hasExtensions) {
                return this.extensionSchema.getExtensions(t).equals(this.extensionSchema.getExtensions(t2));
            }
            return true;
        }
        return false;
    }

    private boolean equals(T t, T t2, int i) {
        int typeAndOffsetAt = typeAndOffsetAt(i);
        long offset = offset(typeAndOffsetAt);
        switch (type(typeAndOffsetAt)) {
            case 0:
                return arePresentForEquals(t, t2, i)
                        && Double.doubleToLongBits(UnsafeUtil.getDouble(t, offset)) == Double
                                .doubleToLongBits(UnsafeUtil.getDouble(t2, offset));
            case 1:
                return arePresentForEquals(t, t2, i) && Float.floatToIntBits(UnsafeUtil.getFloat(t, offset)) == Float
                        .floatToIntBits(UnsafeUtil.getFloat(t2, offset));
            case 2:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 3:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 4:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 5:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 6:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 7:
                return arePresentForEquals(t, t2, i)
                        && UnsafeUtil.getBoolean(t, offset) == UnsafeUtil.getBoolean(t2, offset);
            case 8:
                return arePresentForEquals(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 9:
                return arePresentForEquals(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 10:
                return arePresentForEquals(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 11:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 12:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 13:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 14:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 15:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 16:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 17:
                return arePresentForEquals(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
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
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 50:
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
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
                return isOneofCaseEqual(t, t2, i)
                        && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            default:
                return true;
        }
    }

    @Override // com.google.oplus.protobuf.Schema
    public int hashCode(T t) {
        int i;
        int hashLong;
        int length = this.buffer.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int typeAndOffsetAt = typeAndOffsetAt(i3);
            int numberAt = numberAt(i3);
            long offset = offset(typeAndOffsetAt);
            int i4 = 37;
            switch (type(typeAndOffsetAt)) {
                case 0:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(Double.doubleToLongBits(UnsafeUtil.getDouble(t, offset)));
                    i2 = i + hashLong;
                    break;
                case 1:
                    i = i2 * 53;
                    hashLong = Float.floatToIntBits(UnsafeUtil.getFloat(t, offset));
                    i2 = i + hashLong;
                    break;
                case 2:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i2 = i + hashLong;
                    break;
                case 3:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i2 = i + hashLong;
                    break;
                case 4:
                    i = i2 * 53;
                    hashLong = UnsafeUtil.getInt(t, offset);
                    i2 = i + hashLong;
                    break;
                case 5:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i2 = i + hashLong;
                    break;
                case 6:
                    i = i2 * 53;
                    hashLong = UnsafeUtil.getInt(t, offset);
                    i2 = i + hashLong;
                    break;
                case 7:
                    i = i2 * 53;
                    hashLong = Internal.hashBoolean(UnsafeUtil.getBoolean(t, offset));
                    i2 = i + hashLong;
                    break;
                case 8:
                    i = i2 * 53;
                    hashLong = ((String) UnsafeUtil.getObject(t, offset)).hashCode();
                    i2 = i + hashLong;
                    break;
                case 9:
                    Object object = UnsafeUtil.getObject(t, offset);
                    if (object != null) {
                        i4 = object.hashCode();
                    }
                    i2 = (i2 * 53) + i4;
                    break;
                case 10:
                    i = i2 * 53;
                    hashLong = UnsafeUtil.getObject(t, offset).hashCode();
                    i2 = i + hashLong;
                    break;
                case 11:
                    i = i2 * 53;
                    hashLong = UnsafeUtil.getInt(t, offset);
                    i2 = i + hashLong;
                    break;
                case 12:
                    i = i2 * 53;
                    hashLong = UnsafeUtil.getInt(t, offset);
                    i2 = i + hashLong;
                    break;
                case 13:
                    i = i2 * 53;
                    hashLong = UnsafeUtil.getInt(t, offset);
                    i2 = i + hashLong;
                    break;
                case 14:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i2 = i + hashLong;
                    break;
                case 15:
                    i = i2 * 53;
                    hashLong = UnsafeUtil.getInt(t, offset);
                    i2 = i + hashLong;
                    break;
                case 16:
                    i = i2 * 53;
                    hashLong = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i2 = i + hashLong;
                    break;
                case 17:
                    Object object2 = UnsafeUtil.getObject(t, offset);
                    if (object2 != null) {
                        i4 = object2.hashCode();
                    }
                    i2 = (i2 * 53) + i4;
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
                    hashLong = UnsafeUtil.getObject(t, offset).hashCode();
                    i2 = i + hashLong;
                    break;
                case 50:
                    i = i2 * 53;
                    hashLong = UnsafeUtil.getObject(t, offset).hashCode();
                    i2 = i + hashLong;
                    break;
                case 51:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(Double.doubleToLongBits(oneofDoubleAt(t, offset)));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = Float.floatToIntBits(oneofFloatAt(t, offset));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(oneofLongAt(t, offset));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(oneofLongAt(t, offset));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = oneofIntAt(t, offset);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(oneofLongAt(t, offset));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = oneofIntAt(t, offset);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashBoolean(oneofBooleanAt(t, offset));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = ((String) UnsafeUtil.getObject(t, offset)).hashCode();
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = UnsafeUtil.getObject(t, offset).hashCode();
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = UnsafeUtil.getObject(t, offset).hashCode();
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = oneofIntAt(t, offset);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = oneofIntAt(t, offset);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = oneofIntAt(t, offset);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(oneofLongAt(t, offset));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = oneofIntAt(t, offset);
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = Internal.hashLong(oneofLongAt(t, offset));
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (isOneofPresent(t, numberAt, i3)) {
                        i = i2 * 53;
                        hashLong = UnsafeUtil.getObject(t, offset).hashCode();
                        i2 = i + hashLong;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.unknownFieldSchema.getFromMessage(t).hashCode();
        return this.hasExtensions ? (hashCode * 53) + this.extensionSchema.getExtensions(t).hashCode() : hashCode;
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
        int typeAndOffsetAt = typeAndOffsetAt(i);
        long offset = offset(typeAndOffsetAt);
        int numberAt = numberAt(i);
        switch (type(typeAndOffsetAt)) {
            case 0:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putDouble(t, offset, UnsafeUtil.getDouble(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 1:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putFloat(t, offset, UnsafeUtil.getFloat(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 2:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 3:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 4:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 5:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 6:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 7:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putBoolean(t, offset, UnsafeUtil.getBoolean(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 8:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 9:
                mergeMessage(t, t2, i);
                return;
            case 10:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 11:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 12:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 13:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 14:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 15:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 16:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 17:
                mergeMessage(t, t2, i);
                return;
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
                this.listFieldSchema.mergeListsAt(t, t2, offset);
                return;
            case 50:
                SchemaUtil.mergeMap(this.mapFieldSchema, t, t2, offset);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (isOneofPresent(t2, numberAt, i)) {
                    UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                    setOneofPresent(t, numberAt, i);
                    return;
                }
                return;
            case 60:
                mergeOneofMessage(t, t2, i);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (isOneofPresent(t2, numberAt, i)) {
                    UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                    setOneofPresent(t, numberAt, i);
                    return;
                }
                return;
            case 68:
                mergeOneofMessage(t, t2, i);
                return;
            default:
                return;
        }
    }

    private void mergeMessage(T t, T t2, int i) {
        long offset = offset(typeAndOffsetAt(i));
        if (isFieldPresent(t2, i)) {
            Object object = UnsafeUtil.getObject(t, offset);
            Object object2 = UnsafeUtil.getObject(t2, offset);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(t, offset, Internal.mergeMessage(object, object2));
                setFieldPresent(t, i);
            } else if (object2 != null) {
                UnsafeUtil.putObject(t, offset, object2);
                setFieldPresent(t, i);
            }
        }
    }

    private void mergeOneofMessage(T t, T t2, int i) {
        int typeAndOffsetAt = typeAndOffsetAt(i);
        int numberAt = numberAt(i);
        long offset = offset(typeAndOffsetAt);
        if (isOneofPresent(t2, numberAt, i)) {
            Object object = isOneofPresent(t, numberAt, i) ? UnsafeUtil.getObject(t, offset) : null;
            Object object2 = UnsafeUtil.getObject(t2, offset);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(t, offset, Internal.mergeMessage(object, object2));
                setOneofPresent(t, numberAt, i);
            } else if (object2 != null) {
                UnsafeUtil.putObject(t, offset, object2);
                setOneofPresent(t, numberAt, i);
            }
        }
    }

    @Override // com.google.oplus.protobuf.Schema
    public int getSerializedSize(T t) {
        return this.proto3 ? getSerializedSizeProto3(t) : getSerializedSizeProto2(t);
    }

    /*
     * JADX WARN: Can't fix incorrect switch cases order, some code will duplicate
     */
    private int getSerializedSizeProto2(T t) {
        int i;
        int i2;
        int computeDoubleSize;
        int computeBoolSize;
        int computeSFixed32Size;
        boolean z;
        int computeSizeFixed32List;
        int computeSizeFixed64ListNoTag;
        int computeTagSize;
        int computeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i5 < this.buffer.length) {
            int typeAndOffsetAt = typeAndOffsetAt(i5);
            int numberAt = numberAt(i5);
            int type = type(typeAndOffsetAt);
            if (type <= 17) {
                i = this.buffer[i5 + 2];
                int i8 = i & i3;
                i2 = 1 << (i >>> 20);
                if (i8 != i4) {
                    i7 = unsafe.getInt(t, i8);
                    i4 = i8;
                }
            } else {
                i = (!this.useCachedSizeField || type < FieldType.DOUBLE_LIST_PACKED.id()
                        || type > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i5 + 2] & i3;
                i2 = 0;
            }
            long offset = offset(typeAndOffsetAt);
            switch (type) {
                case 0:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        i6 += computeDoubleSize;
                        break;
                    }
                case 1:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeFloatSize(numberAt, 0.0f);
                        i6 += computeDoubleSize;
                        break;
                    }
                case 2:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeInt64Size(numberAt, unsafe.getLong(t, offset));
                        i6 += computeDoubleSize;
                        break;
                    }
                case 3:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeUInt64Size(numberAt, unsafe.getLong(t, offset));
                        i6 += computeDoubleSize;
                        break;
                    }
                case 4:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeInt32Size(numberAt, unsafe.getInt(t, offset));
                        i6 += computeDoubleSize;
                        break;
                    }
                case 5:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        computeDoubleSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        i6 += computeDoubleSize;
                        break;
                    }
                case 6:
                    if ((i7 & i2) != 0) {
                        computeDoubleSize = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        i6 += computeDoubleSize;
                        break;
                    }
                    break;
                case 7:
                    if ((i7 & i2) != 0) {
                        computeBoolSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        i6 += computeBoolSize;
                    }
                    break;
                case 8:
                    if ((i7 & i2) != 0) {
                        Object object = unsafe.getObject(t, offset);
                        if (object instanceof ByteString) {
                            computeBoolSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) object);
                        } else {
                            computeBoolSize = CodedOutputStream.computeStringSize(numberAt, (String) object);
                        }
                        i6 += computeBoolSize;
                    }
                    break;
                case 9:
                    if ((i7 & i2) != 0) {
                        computeBoolSize = SchemaUtil.computeSizeMessage(numberAt, unsafe.getObject(t, offset),
                                getMessageFieldSchema(i5));
                        i6 += computeBoolSize;
                    }
                    break;
                case 10:
                    if ((i7 & i2) != 0) {
                        computeBoolSize = CodedOutputStream.computeBytesSize(numberAt,
                                (ByteString) unsafe.getObject(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 11:
                    if ((i7 & i2) != 0) {
                        computeBoolSize = CodedOutputStream.computeUInt32Size(numberAt, unsafe.getInt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 12:
                    if ((i7 & i2) != 0) {
                        computeBoolSize = CodedOutputStream.computeEnumSize(numberAt, unsafe.getInt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 13:
                    if ((i7 & i2) != 0) {
                        computeSFixed32Size = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 14:
                    if ((i7 & i2) != 0) {
                        computeBoolSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        i6 += computeBoolSize;
                    }
                    break;
                case 15:
                    if ((i7 & i2) != 0) {
                        computeBoolSize = CodedOutputStream.computeSInt32Size(numberAt, unsafe.getInt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 16:
                    if ((i7 & i2) != 0) {
                        computeBoolSize = CodedOutputStream.computeSInt64Size(numberAt, unsafe.getLong(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 17:
                    if ((i7 & i2) != 0) {
                        computeBoolSize = CodedOutputStream.computeGroupSize(numberAt,
                                (MessageLite) unsafe.getObject(t, offset), getMessageFieldSchema(i5));
                        i6 += computeBoolSize;
                    }
                    break;
                case 18:
                    computeBoolSize = SchemaUtil.computeSizeFixed64List(numberAt, (List) unsafe.getObject(t, offset),
                            false);
                    i6 += computeBoolSize;
                    break;
                case 19:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed32List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 20:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeInt64List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 21:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeUInt64List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 22:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeInt32List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 23:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed64List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed32List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeBoolList(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 26:
                    computeBoolSize = SchemaUtil.computeSizeStringList(numberAt, (List) unsafe.getObject(t, offset));
                    i6 += computeBoolSize;
                    break;
                case 27:
                    computeBoolSize = SchemaUtil.computeSizeMessageList(numberAt, (List) unsafe.getObject(t, offset),
                            getMessageFieldSchema(i5));
                    i6 += computeBoolSize;
                    break;
                case 28:
                    computeBoolSize = SchemaUtil.computeSizeByteStringList(numberAt,
                            (List) unsafe.getObject(t, offset));
                    i6 += computeBoolSize;
                    break;
                case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                    computeBoolSize = SchemaUtil.computeSizeUInt32List(numberAt, (List) unsafe.getObject(t, offset),
                            false);
                    i6 += computeBoolSize;
                    break;
                case 30:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeEnumList(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 31:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed32List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 32:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeFixed64List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 33:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeSInt32List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 34:
                    z = false;
                    computeSizeFixed32List = SchemaUtil.computeSizeSInt64List(numberAt,
                            (List) unsafe.getObject(t, offset), false);
                    i6 += computeSizeFixed32List;
                    break;
                case 35:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 36:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 37:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeInt64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeUInt64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeInt32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 40:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 41:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 42:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeBoolListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeUInt32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeEnumListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 45:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 46:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeSInt32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeSInt64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeSFixed32Size = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        i6 += computeSFixed32Size;
                    }
                    break;
                case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                    computeBoolSize = SchemaUtil.computeSizeGroupList(numberAt, (List) unsafe.getObject(t, offset),
                            getMessageFieldSchema(i5));
                    i6 += computeBoolSize;
                    break;
                case 50:
                    computeBoolSize = this.mapFieldSchema.getSerializedSize(numberAt, unsafe.getObject(t, offset),
                            getMapFieldDefaultEntry(i5));
                    i6 += computeBoolSize;
                    break;
                case 51:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        i6 += computeBoolSize;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeFloatSize(numberAt, 0.0f);
                        i6 += computeBoolSize;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeInt64Size(numberAt, oneofLongAt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeUInt64Size(numberAt, oneofLongAt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeInt32Size(numberAt, oneofIntAt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        i6 += computeBoolSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeSFixed32Size = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        i6 += computeBoolSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t, numberAt, i5)) {
                        Object object2 = unsafe.getObject(t, offset);
                        if (object2 instanceof ByteString) {
                            computeBoolSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) object2);
                        } else {
                            computeBoolSize = CodedOutputStream.computeStringSize(numberAt, (String) object2);
                        }
                        i6 += computeBoolSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = SchemaUtil.computeSizeMessage(numberAt, unsafe.getObject(t, offset),
                                getMessageFieldSchema(i5));
                        i6 += computeBoolSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeBytesSize(numberAt,
                                (ByteString) unsafe.getObject(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeUInt32Size(numberAt, oneofIntAt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeEnumSize(numberAt, oneofIntAt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeSFixed32Size = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        i6 += computeSFixed32Size;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        i6 += computeBoolSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeSInt32Size(numberAt, oneofIntAt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeSInt64Size(numberAt, oneofLongAt(t, offset));
                        i6 += computeBoolSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeBoolSize = CodedOutputStream.computeGroupSize(numberAt,
                                (MessageLite) unsafe.getObject(t, offset), getMessageFieldSchema(i5));
                        i6 += computeBoolSize;
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

    private int getSerializedSizeProto3(T t) {
        int computeDoubleSize;
        int computeSizeFixed64ListNoTag;
        int computeTagSize;
        int computeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i = 0;
        for (int i2 = 0; i2 < this.buffer.length; i2 += 3) {
            int typeAndOffsetAt = typeAndOffsetAt(i2);
            int type = type(typeAndOffsetAt);
            int numberAt = numberAt(i2);
            long offset = offset(typeAndOffsetAt);
            int i3 = (type < FieldType.DOUBLE_LIST_PACKED.id() || type > FieldType.SINT64_LIST_PACKED.id()) ? 0
                    : this.buffer[i2 + 2] & 1048575;
            switch (type) {
                case 0:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeFloatSize(numberAt, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeInt64Size(numberAt, UnsafeUtil.getLong(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeUInt64Size(numberAt,
                                UnsafeUtil.getLong(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeInt32Size(numberAt, UnsafeUtil.getInt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (isFieldPresent(t, i2)) {
                        Object object = UnsafeUtil.getObject(t, offset);
                        if (object instanceof ByteString) {
                            computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) object);
                            break;
                        } else {
                            computeDoubleSize = CodedOutputStream.computeStringSize(numberAt, (String) object);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = SchemaUtil.computeSizeMessage(numberAt, UnsafeUtil.getObject(t, offset),
                                getMessageFieldSchema(i2));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt,
                                (ByteString) UnsafeUtil.getObject(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 11:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeUInt32Size(numberAt, UnsafeUtil.getInt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeEnumSize(numberAt, UnsafeUtil.getInt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeSInt32Size(numberAt, UnsafeUtil.getInt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeSInt64Size(numberAt,
                                UnsafeUtil.getLong(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    if (isFieldPresent(t, i2)) {
                        computeDoubleSize = CodedOutputStream.computeGroupSize(numberAt,
                                (MessageLite) UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i2));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    computeDoubleSize = SchemaUtil.computeSizeFixed64List(numberAt, listAt(t, offset), false);
                    break;
                case 19:
                    computeDoubleSize = SchemaUtil.computeSizeFixed32List(numberAt, listAt(t, offset), false);
                    break;
                case 20:
                    computeDoubleSize = SchemaUtil.computeSizeInt64List(numberAt, listAt(t, offset), false);
                    break;
                case 21:
                    computeDoubleSize = SchemaUtil.computeSizeUInt64List(numberAt, listAt(t, offset), false);
                    break;
                case 22:
                    computeDoubleSize = SchemaUtil.computeSizeInt32List(numberAt, listAt(t, offset), false);
                    break;
                case 23:
                    computeDoubleSize = SchemaUtil.computeSizeFixed64List(numberAt, listAt(t, offset), false);
                    break;
                case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                    computeDoubleSize = SchemaUtil.computeSizeFixed32List(numberAt, listAt(t, offset), false);
                    break;
                case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                    computeDoubleSize = SchemaUtil.computeSizeBoolList(numberAt, listAt(t, offset), false);
                    break;
                case 26:
                    computeDoubleSize = SchemaUtil.computeSizeStringList(numberAt, listAt(t, offset));
                    break;
                case 27:
                    computeDoubleSize = SchemaUtil.computeSizeMessageList(numberAt, listAt(t, offset),
                            getMessageFieldSchema(i2));
                    break;
                case 28:
                    computeDoubleSize = SchemaUtil.computeSizeByteStringList(numberAt, listAt(t, offset));
                    break;
                case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                    computeDoubleSize = SchemaUtil.computeSizeUInt32List(numberAt, listAt(t, offset), false);
                    break;
                case 30:
                    computeDoubleSize = SchemaUtil.computeSizeEnumList(numberAt, listAt(t, offset), false);
                    break;
                case 31:
                    computeDoubleSize = SchemaUtil.computeSizeFixed32List(numberAt, listAt(t, offset), false);
                    break;
                case 32:
                    computeDoubleSize = SchemaUtil.computeSizeFixed64List(numberAt, listAt(t, offset), false);
                    break;
                case 33:
                    computeDoubleSize = SchemaUtil.computeSizeSInt32List(numberAt, listAt(t, offset), false);
                    break;
                case 34:
                    computeDoubleSize = SchemaUtil.computeSizeSInt64List(numberAt, listAt(t, offset), false);
                    break;
                case 35:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case 36:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case 37:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeInt64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeUInt64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeInt32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case 40:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case 41:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case 42:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeBoolListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeUInt32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeEnumListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case 45:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case 46:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeSInt32ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                    computeSizeFixed64ListNoTag = SchemaUtil
                            .computeSizeSInt64ListNoTag((List) unsafe.getObject(t, offset));
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i3, computeSizeFixed64ListNoTag);
                        }
                        computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        computeDoubleSize = computeTagSize + computeUInt32SizeNoTag + computeSizeFixed64ListNoTag;
                        break;
                    } else {
                        continue;
                    }
                case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                    computeDoubleSize = SchemaUtil.computeSizeGroupList(numberAt, listAt(t, offset),
                            getMessageFieldSchema(i2));
                    break;
                case 50:
                    computeDoubleSize = this.mapFieldSchema.getSerializedSize(numberAt, UnsafeUtil.getObject(t, offset),
                            getMapFieldDefaultEntry(i2));
                    break;
                case 51:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeFloatSize(numberAt, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeInt64Size(numberAt, oneofLongAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeUInt64Size(numberAt, oneofLongAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeInt32Size(numberAt, oneofIntAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (isOneofPresent(t, numberAt, i2)) {
                        Object object2 = UnsafeUtil.getObject(t, offset);
                        if (object2 instanceof ByteString) {
                            computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) object2);
                            break;
                        } else {
                            computeDoubleSize = CodedOutputStream.computeStringSize(numberAt, (String) object2);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = SchemaUtil.computeSizeMessage(numberAt, UnsafeUtil.getObject(t, offset),
                                getMessageFieldSchema(i2));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt,
                                (ByteString) UnsafeUtil.getObject(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 62:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeUInt32Size(numberAt, oneofIntAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeEnumSize(numberAt, oneofIntAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeSInt32Size(numberAt, oneofIntAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeSInt64Size(numberAt, oneofLongAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    if (isOneofPresent(t, numberAt, i2)) {
                        computeDoubleSize = CodedOutputStream.computeGroupSize(numberAt,
                                (MessageLite) UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i2));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i += computeDoubleSize;
        }
        return i + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t);
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t) {
        return unknownFieldSchema.getSerializedSize(unknownFieldSchema.getFromMessage(t));
    }

    private static List<?> listAt(Object obj, long j) {
        return (List) UnsafeUtil.getObject(obj, j);
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

    private void writeFieldsInAscendingOrderProto2(T message, Writer writer) throws IOException {
      Iterator<? extends Map.Entry<?, ?>> extensionIterator = null;
      Map.Entry nextExtension = null;
      if (hasExtensions) {
        FieldSet<?> extensions = extensionSchema.getExtensions(message);
        if (!extensions.isEmpty()) {
          extensionIterator = extensions.iterator();
          nextExtension = extensionIterator.next();
        }
      }
      int currentPresenceFieldOffset = -1;
      int currentPresenceField = 0;
      final int bufferLength = buffer.length;
      final sun.misc.Unsafe unsafe = UNSAFE;
      for (int pos = 0; pos < bufferLength; pos += INTS_PER_FIELD) {
        final int typeAndOffset = typeAndOffsetAt(pos);
        final int number = numberAt(pos);
        final int fieldType = type(typeAndOffset);
  
        int presenceMaskAndOffset = 0;
        int presenceMask = 0;
        if (!proto3 && fieldType <= 17) {
          presenceMaskAndOffset = buffer[pos + 2];
          final int presenceFieldOffset = presenceMaskAndOffset & OFFSET_MASK;
          if (presenceFieldOffset != currentPresenceFieldOffset) {
            currentPresenceFieldOffset = presenceFieldOffset;
            currentPresenceField = unsafe.getInt(message, (long) presenceFieldOffset);
          }
          presenceMask = 1 << (presenceMaskAndOffset >>> OFFSET_BITS);
        }
  
        // Write any extensions that need to be written before the current field.
        while (nextExtension != null && extensionSchema.extensionNumber(nextExtension) <= number) {
          extensionSchema.serializeExtension(writer, nextExtension);
          nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
        }
        final long offset = offset(typeAndOffset);
  
        switch (fieldType) {
          case 0: // DOUBLE:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeDouble(number, doubleAt(message, offset));
            }
            break;
          case 1: // FLOAT:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeFloat(number, floatAt(message, offset));
            }
            break;
          case 2: // INT64:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeInt64(number, unsafe.getLong(message, offset));
            }
            break;
          case 3: // UINT64:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeUInt64(number, unsafe.getLong(message, offset));
            }
            break;
          case 4: // INT32:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeInt32(number, unsafe.getInt(message, offset));
            }
            break;
          case 5: // FIXED64:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeFixed64(number, unsafe.getLong(message, offset));
            }
            break;
          case 6: // FIXED32:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeFixed32(number, unsafe.getInt(message, offset));
            }
            break;
          case 7: // BOOL:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeBool(number, booleanAt(message, offset));
            }
            break;
          case 8: // STRING:
            if ((currentPresenceField & presenceMask) != 0) {
              writeString(number, unsafe.getObject(message, offset), writer);
            }
            break;
          case 9: // MESSAGE:
            if ((currentPresenceField & presenceMask) != 0) {
              Object value = unsafe.getObject(message, offset);
              writer.writeMessage(number, value, getMessageFieldSchema(pos));
            }
            break;
          case 10: // BYTES:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeBytes(number, (ByteString) unsafe.getObject(message, offset));
            }
            break;
          case 11: // UINT32:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeUInt32(number, unsafe.getInt(message, offset));
            }
            break;
          case 12: // ENUM:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeEnum(number, unsafe.getInt(message, offset));
            }
            break;
          case 13: // SFIXED32:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeSFixed32(number, unsafe.getInt(message, offset));
            }
            break;
          case 14: // SFIXED64:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeSFixed64(number, unsafe.getLong(message, offset));
            }
            break;
          case 15: // SINT32:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeSInt32(number, unsafe.getInt(message, offset));
            }
            break;
          case 16: // SINT64:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeSInt64(number, unsafe.getLong(message, offset));
            }
            break;
          case 17: // GROUP:
            if ((currentPresenceField & presenceMask) != 0) {
              writer.writeGroup(
                  number, unsafe.getObject(message, offset), getMessageFieldSchema(pos));
            }
            break;
          case 18: // DOUBLE_LIST:
            SchemaUtil.writeDoubleList(
                numberAt(pos), (List<Double>) unsafe.getObject(message, offset), writer, false);
            break;
          case 19: // FLOAT_LIST:
            SchemaUtil.writeFloatList(
                numberAt(pos), (List<Float>) unsafe.getObject(message, offset), writer, false);
            break;
          case 20: // INT64_LIST:
            SchemaUtil.writeInt64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, false);
            break;
          case 21: // UINT64_LIST:
            SchemaUtil.writeUInt64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, false);
            break;
          case 22: // INT32_LIST:
            SchemaUtil.writeInt32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, false);
            break;
          case 23: // FIXED64_LIST:
            SchemaUtil.writeFixed64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, false);
            break;
          case 24: // FIXED32_LIST:
            SchemaUtil.writeFixed32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, false);
            break;
          case 25: // BOOL_LIST:
            SchemaUtil.writeBoolList(
                numberAt(pos), (List<Boolean>) unsafe.getObject(message, offset), writer, false);
            break;
          case 26: // STRING_LIST:
            SchemaUtil.writeStringList(
                numberAt(pos), (List<String>) unsafe.getObject(message, offset), writer);
            break;
          case 27: // MESSAGE_LIST:
            SchemaUtil.writeMessageList(
                numberAt(pos),
                (List<?>) unsafe.getObject(message, offset),
                writer,
                getMessageFieldSchema(pos));
            break;
          case 28: // BYTES_LIST:
            SchemaUtil.writeBytesList(
                numberAt(pos), (List<ByteString>) unsafe.getObject(message, offset), writer);
            break;
          case 29: // UINT32_LIST:
            SchemaUtil.writeUInt32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, false);
            break;
          case 30: // ENUM_LIST:
            SchemaUtil.writeEnumList(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, false);
            break;
          case 31: // SFIXED32_LIST:
            SchemaUtil.writeSFixed32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, false);
            break;
          case 32: // SFIXED64_LIST:
            SchemaUtil.writeSFixed64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, false);
            break;
          case 33: // SINT32_LIST:
            SchemaUtil.writeSInt32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, false);
            break;
          case 34: // SINT64_LIST:
            SchemaUtil.writeSInt64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, false);
            break;
          case 35: // DOUBLE_LIST_PACKED:
            // TODO(xiaofeng): Make use of cached field size to speed up serialization.
            SchemaUtil.writeDoubleList(
                numberAt(pos), (List<Double>) unsafe.getObject(message, offset), writer, true);
            break;
          case 36: // FLOAT_LIST_PACKED:
            SchemaUtil.writeFloatList(
                numberAt(pos), (List<Float>) unsafe.getObject(message, offset), writer, true);
            break;
          case 37: // INT64_LIST_PACKED:
            SchemaUtil.writeInt64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, true);
            break;
          case 38: // UINT64_LIST_PACKED:
            SchemaUtil.writeUInt64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, true);
            break;
          case 39: // INT32_LIST_PACKED:
            SchemaUtil.writeInt32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, true);
            break;
          case 40: // FIXED64_LIST_PACKED:
            SchemaUtil.writeFixed64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, true);
            break;
          case 41: // FIXED32_LIST_PACKED:
            SchemaUtil.writeFixed32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, true);
  
            break;
          case 42: // BOOL_LIST_PACKED:
            SchemaUtil.writeBoolList(
                numberAt(pos), (List<Boolean>) unsafe.getObject(message, offset), writer, true);
            break;
          case 43: // UINT32_LIST_PACKED:
            SchemaUtil.writeUInt32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, true);
            break;
          case 44: // ENUM_LIST_PACKED:
            SchemaUtil.writeEnumList(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, true);
            break;
          case 45: // SFIXED32_LIST_PACKED:
            SchemaUtil.writeSFixed32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, true);
            break;
          case 46: // SFIXED64_LIST_PACKED:
            SchemaUtil.writeSFixed64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, true);
            break;
          case 47: // SINT32_LIST_PACKED:
            SchemaUtil.writeSInt32List(
                numberAt(pos), (List<Integer>) unsafe.getObject(message, offset), writer, true);
            break;
          case 48: // SINT64_LIST_PACKED:
            SchemaUtil.writeSInt64List(
                numberAt(pos), (List<Long>) unsafe.getObject(message, offset), writer, true);
            break;
          case 49: // GROUP_LIST:
            SchemaUtil.writeGroupList(
                numberAt(pos),
                (List<?>) unsafe.getObject(message, offset),
                writer,
                getMessageFieldSchema(pos));
            break;
          case 50: // MAP:
            // TODO(dweis): Use schema cache.
            writeMapHelper(writer, number, unsafe.getObject(message, offset), pos);
            break;
          case 51: // ONEOF_DOUBLE:
            if (isOneofPresent(message, number, pos)) {
              writer.writeDouble(number, oneofDoubleAt(message, offset));
            }
            break;
          case 52: // ONEOF_FLOAT:
            if (isOneofPresent(message, number, pos)) {
              writer.writeFloat(number, oneofFloatAt(message, offset));
            }
            break;
          case 53: // ONEOF_INT64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeInt64(number, oneofLongAt(message, offset));
            }
            break;
          case 54: // ONEOF_UINT64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeUInt64(number, oneofLongAt(message, offset));
            }
            break;
          case 55: // ONEOF_INT32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeInt32(number, oneofIntAt(message, offset));
            }
            break;
          case 56: // ONEOF_FIXED64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeFixed64(number, oneofLongAt(message, offset));
            }
            break;
          case 57: // ONEOF_FIXED32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeFixed32(number, oneofIntAt(message, offset));
            }
            break;
          case 58: // ONEOF_BOOL:
            if (isOneofPresent(message, number, pos)) {
              writer.writeBool(number, oneofBooleanAt(message, offset));
            }
            break;
          case 59: // ONEOF_STRING:
            if (isOneofPresent(message, number, pos)) {
              writeString(number, unsafe.getObject(message, offset), writer);
            }
            break;
          case 60: // ONEOF_MESSAGE:
            if (isOneofPresent(message, number, pos)) {
              Object value = unsafe.getObject(message, offset);
              writer.writeMessage(number, value, getMessageFieldSchema(pos));
            }
            break;
          case 61: // ONEOF_BYTES:
            if (isOneofPresent(message, number, pos)) {
              writer.writeBytes(number, (ByteString) unsafe.getObject(message, offset));
            }
            break;
          case 62: // ONEOF_UINT32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeUInt32(number, oneofIntAt(message, offset));
            }
            break;
          case 63: // ONEOF_ENUM:
            if (isOneofPresent(message, number, pos)) {
              writer.writeEnum(number, oneofIntAt(message, offset));
            }
            break;
          case 64: // ONEOF_SFIXED32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSFixed32(number, oneofIntAt(message, offset));
            }
            break;
          case 65: // ONEOF_SFIXED64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSFixed64(number, oneofLongAt(message, offset));
            }
            break;
          case 66: // ONEOF_SINT32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSInt32(number, oneofIntAt(message, offset));
            }
            break;
          case 67: // ONEOF_SINT64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSInt64(number, oneofLongAt(message, offset));
            }
            break;
          case 68: // ONEOF_GROUP:
            if (isOneofPresent(message, number, pos)) {
              writer.writeGroup(
                  number, unsafe.getObject(message, offset), getMessageFieldSchema(pos));
            }
            break;
          default:
            // Assume it's an empty entry - just go to the next entry.
            break;
        }
      }
      while (nextExtension != null) {
        extensionSchema.serializeExtension(writer, nextExtension);
        nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
      }
      writeUnknownInMessageTo(unknownFieldSchema, message, writer);
    }

    private void writeFieldsInAscendingOrderProto3(T message, Writer writer) throws IOException {
      Iterator<? extends Map.Entry<?, ?>> extensionIterator = null;
      Map.Entry nextExtension = null;
      if (hasExtensions) {
        FieldSet<?> extensions = extensionSchema.getExtensions(message);
        if (!extensions.isEmpty()) {
          extensionIterator = extensions.iterator();
          nextExtension = extensionIterator.next();
        }
      }
  
      final int bufferLength = buffer.length;
      for (int pos = 0; pos < bufferLength; pos += INTS_PER_FIELD) {
        final int typeAndOffset = typeAndOffsetAt(pos);
        final int number = numberAt(pos);
  
        // Write any extensions that need to be written before the current field.
        while (nextExtension != null && extensionSchema.extensionNumber(nextExtension) <= number) {
          extensionSchema.serializeExtension(writer, nextExtension);
          nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
        }
  
        switch (type(typeAndOffset)) {
          case 0: // DOUBLE:
            if (isFieldPresent(message, pos)) {
              writer.writeDouble(number, doubleAt(message, offset(typeAndOffset)));
            }
            break;
          case 1: // FLOAT:
            if (isFieldPresent(message, pos)) {
              writer.writeFloat(number, floatAt(message, offset(typeAndOffset)));
            }
            break;
          case 2: // INT64:
            if (isFieldPresent(message, pos)) {
              writer.writeInt64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 3: // UINT64:
            if (isFieldPresent(message, pos)) {
              writer.writeUInt64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 4: // INT32:
            if (isFieldPresent(message, pos)) {
              writer.writeInt32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 5: // FIXED64:
            if (isFieldPresent(message, pos)) {
              writer.writeFixed64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 6: // FIXED32:
            if (isFieldPresent(message, pos)) {
              writer.writeFixed32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 7: // BOOL:
            if (isFieldPresent(message, pos)) {
              writer.writeBool(number, booleanAt(message, offset(typeAndOffset)));
            }
            break;
          case 8: // STRING:
            if (isFieldPresent(message, pos)) {
              writeString(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
            }
            break;
          case 9: // MESSAGE:
            if (isFieldPresent(message, pos)) {
              Object value = UnsafeUtil.getObject(message, offset(typeAndOffset));
              writer.writeMessage(number, value, getMessageFieldSchema(pos));
            }
            break;
          case 10: // BYTES:
            if (isFieldPresent(message, pos)) {
              writer.writeBytes(
                  number, (ByteString) UnsafeUtil.getObject(message, offset(typeAndOffset)));
            }
            break;
          case 11: // UINT32:
            if (isFieldPresent(message, pos)) {
              writer.writeUInt32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 12: // ENUM:
            if (isFieldPresent(message, pos)) {
              writer.writeEnum(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 13: // SFIXED32:
            if (isFieldPresent(message, pos)) {
              writer.writeSFixed32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 14: // SFIXED64:
            if (isFieldPresent(message, pos)) {
              writer.writeSFixed64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 15: // SINT32:
            if (isFieldPresent(message, pos)) {
              writer.writeSInt32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 16: // SINT64:
            if (isFieldPresent(message, pos)) {
              writer.writeSInt64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 17: // GROUP:
            if (isFieldPresent(message, pos)) {
              writer.writeGroup(
                  number,
                  UnsafeUtil.getObject(message, offset(typeAndOffset)),
                  getMessageFieldSchema(pos));
            }
            break;
          case 18: // DOUBLE_LIST:
            SchemaUtil.writeDoubleList(
                numberAt(pos),
                (List<Double>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 19: // FLOAT_LIST:
            SchemaUtil.writeFloatList(
                numberAt(pos),
                (List<Float>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 20: // INT64_LIST:
            SchemaUtil.writeInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 21: // UINT64_LIST:
            SchemaUtil.writeUInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 22: // INT32_LIST:
            SchemaUtil.writeInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 23: // FIXED64_LIST:
            SchemaUtil.writeFixed64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 24: // FIXED32_LIST:
            SchemaUtil.writeFixed32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 25: // BOOL_LIST:
            SchemaUtil.writeBoolList(
                numberAt(pos),
                (List<Boolean>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 26: // STRING_LIST:
            SchemaUtil.writeStringList(
                numberAt(pos),
                (List<String>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer);
            break;
          case 27: // MESSAGE_LIST:
            SchemaUtil.writeMessageList(
                numberAt(pos),
                (List<?>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                getMessageFieldSchema(pos));
            break;
          case 28: // BYTES_LIST:
            SchemaUtil.writeBytesList(
                numberAt(pos),
                (List<ByteString>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer);
            break;
          case 29: // UINT32_LIST:
            SchemaUtil.writeUInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 30: // ENUM_LIST:
            SchemaUtil.writeEnumList(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 31: // SFIXED32_LIST:
            SchemaUtil.writeSFixed32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 32: // SFIXED64_LIST:
            SchemaUtil.writeSFixed64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 33: // SINT32_LIST:
            SchemaUtil.writeSInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 34: // SINT64_LIST:
            SchemaUtil.writeSInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 35: // DOUBLE_LIST_PACKED:
            // TODO(xiaofeng): Make use of cached field size to speed up serialization.
            SchemaUtil.writeDoubleList(
                numberAt(pos),
                (List<Double>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 36: // FLOAT_LIST_PACKED:
            SchemaUtil.writeFloatList(
                numberAt(pos),
                (List<Float>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 37: // INT64_LIST_PACKED:
            SchemaUtil.writeInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 38: // UINT64_LIST_PACKED:
            SchemaUtil.writeUInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 39: // INT32_LIST_PACKED:
            SchemaUtil.writeInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 40: // FIXED64_LIST_PACKED:
            SchemaUtil.writeFixed64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 41: // FIXED32_LIST_PACKED:
            SchemaUtil.writeFixed32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
  
            break;
          case 42: // BOOL_LIST_PACKED:
            SchemaUtil.writeBoolList(
                numberAt(pos),
                (List<Boolean>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 43: // UINT32_LIST_PACKED:
            SchemaUtil.writeUInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 44: // ENUM_LIST_PACKED:
            SchemaUtil.writeEnumList(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 45: // SFIXED32_LIST_PACKED:
            SchemaUtil.writeSFixed32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 46: // SFIXED64_LIST_PACKED:
            SchemaUtil.writeSFixed64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 47: // SINT32_LIST_PACKED:
            SchemaUtil.writeSInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 48: // SINT64_LIST_PACKED:
            SchemaUtil.writeSInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 49: // GROUP_LIST:
            SchemaUtil.writeGroupList(
                numberAt(pos),
                (List<?>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                getMessageFieldSchema(pos));
            break;
          case 50: // MAP:
            // TODO(dweis): Use schema cache.
            writeMapHelper(writer, number, UnsafeUtil.getObject(message, offset(typeAndOffset)), pos);
            break;
          case 51: // ONEOF_DOUBLE:
            if (isOneofPresent(message, number, pos)) {
              writer.writeDouble(number, oneofDoubleAt(message, offset(typeAndOffset)));
            }
            break;
          case 52: // ONEOF_FLOAT:
            if (isOneofPresent(message, number, pos)) {
              writer.writeFloat(number, oneofFloatAt(message, offset(typeAndOffset)));
            }
            break;
          case 53: // ONEOF_INT64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeInt64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 54: // ONEOF_UINT64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeUInt64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 55: // ONEOF_INT32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeInt32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 56: // ONEOF_FIXED64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeFixed64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 57: // ONEOF_FIXED32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeFixed32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 58: // ONEOF_BOOL:
            if (isOneofPresent(message, number, pos)) {
              writer.writeBool(number, oneofBooleanAt(message, offset(typeAndOffset)));
            }
            break;
          case 59: // ONEOF_STRING:
            if (isOneofPresent(message, number, pos)) {
              writeString(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
            }
            break;
          case 60: // ONEOF_MESSAGE:
            if (isOneofPresent(message, number, pos)) {
              Object value = UnsafeUtil.getObject(message, offset(typeAndOffset));
              writer.writeMessage(number, value, getMessageFieldSchema(pos));
            }
            break;
          case 61: // ONEOF_BYTES:
            if (isOneofPresent(message, number, pos)) {
              writer.writeBytes(
                  number, (ByteString) UnsafeUtil.getObject(message, offset(typeAndOffset)));
            }
            break;
          case 62: // ONEOF_UINT32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeUInt32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 63: // ONEOF_ENUM:
            if (isOneofPresent(message, number, pos)) {
              writer.writeEnum(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 64: // ONEOF_SFIXED32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSFixed32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 65: // ONEOF_SFIXED64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSFixed64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 66: // ONEOF_SINT32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSInt32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 67: // ONEOF_SINT64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSInt64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 68: // ONEOF_GROUP:
            if (isOneofPresent(message, number, pos)) {
              writer.writeGroup(
                  number,
                  UnsafeUtil.getObject(message, offset(typeAndOffset)),
                  getMessageFieldSchema(pos));
            }
            break;
          default:
            // Assume it's an empty entry - just go to the next entry.
            break;
        }
      }
      while (nextExtension != null) {
        extensionSchema.serializeExtension(writer, nextExtension);
        nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
      }
      writeUnknownInMessageTo(unknownFieldSchema, message, writer);
    }

    private void writeFieldsInDescendingOrder(T message, Writer writer) throws IOException {
      writeUnknownInMessageTo(unknownFieldSchema, message, writer);
  
      Iterator<? extends Map.Entry<?, ?>> extensionIterator = null;
      Map.Entry nextExtension = null;
      if (hasExtensions) {
        FieldSet<?> extensions = extensionSchema.getExtensions(message);
        if (!extensions.isEmpty()) {
          extensionIterator = extensions.descendingIterator();
          nextExtension = extensionIterator.next();
        }
      }
  
      for (int pos = buffer.length - INTS_PER_FIELD; pos >= 0; pos -= INTS_PER_FIELD) {
        final int typeAndOffset = typeAndOffsetAt(pos);
        final int number = numberAt(pos);
  
        // Write any extensions that need to be written before the current field.
        while (nextExtension != null && extensionSchema.extensionNumber(nextExtension) > number) {
          extensionSchema.serializeExtension(writer, nextExtension);
          nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
        }
  
        switch (type(typeAndOffset)) {
          case 0: // DOUBLE:
            if (isFieldPresent(message, pos)) {
              writer.writeDouble(number, doubleAt(message, offset(typeAndOffset)));
            }
            break;
          case 1: // FLOAT:
            if (isFieldPresent(message, pos)) {
              writer.writeFloat(number, floatAt(message, offset(typeAndOffset)));
            }
            break;
          case 2: // INT64:
            if (isFieldPresent(message, pos)) {
              writer.writeInt64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 3: // UINT64:
            if (isFieldPresent(message, pos)) {
              writer.writeUInt64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 4: // INT32:
            if (isFieldPresent(message, pos)) {
              writer.writeInt32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 5: // FIXED64:
            if (isFieldPresent(message, pos)) {
              writer.writeFixed64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 6: // FIXED32:
            if (isFieldPresent(message, pos)) {
              writer.writeFixed32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 7: // BOOL:
            if (isFieldPresent(message, pos)) {
              writer.writeBool(number, booleanAt(message, offset(typeAndOffset)));
            }
            break;
          case 8: // STRING:
            if (isFieldPresent(message, pos)) {
              writeString(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
            }
            break;
          case 9: // MESSAGE:
            if (isFieldPresent(message, pos)) {
              Object value = UnsafeUtil.getObject(message, offset(typeAndOffset));
              writer.writeMessage(number, value, getMessageFieldSchema(pos));
            }
            break;
          case 10: // BYTES:
            if (isFieldPresent(message, pos)) {
              writer.writeBytes(
                  number, (ByteString) UnsafeUtil.getObject(message, offset(typeAndOffset)));
            }
            break;
          case 11: // UINT32:
            if (isFieldPresent(message, pos)) {
              writer.writeUInt32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 12: // ENUM:
            if (isFieldPresent(message, pos)) {
              writer.writeEnum(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 13: // SFIXED32:
            if (isFieldPresent(message, pos)) {
              writer.writeSFixed32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 14: // SFIXED64:
            if (isFieldPresent(message, pos)) {
              writer.writeSFixed64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 15: // SINT32:
            if (isFieldPresent(message, pos)) {
              writer.writeSInt32(number, intAt(message, offset(typeAndOffset)));
            }
            break;
          case 16: // SINT64:
            if (isFieldPresent(message, pos)) {
              writer.writeSInt64(number, longAt(message, offset(typeAndOffset)));
            }
            break;
          case 17: // GROUP:
            if (isFieldPresent(message, pos)) {
              writer.writeGroup(
                  number,
                  UnsafeUtil.getObject(message, offset(typeAndOffset)),
                  getMessageFieldSchema(pos));
            }
            break;
          case 18: // DOUBLE_LIST:
            SchemaUtil.writeDoubleList(
                numberAt(pos),
                (List<Double>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 19: // FLOAT_LIST:
            SchemaUtil.writeFloatList(
                numberAt(pos),
                (List<Float>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 20: // INT64_LIST:
            SchemaUtil.writeInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 21: // UINT64_LIST:
            SchemaUtil.writeUInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 22: // INT32_LIST:
            SchemaUtil.writeInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 23: // FIXED64_LIST:
            SchemaUtil.writeFixed64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 24: // FIXED32_LIST:
            SchemaUtil.writeFixed32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 25: // BOOL_LIST:
            SchemaUtil.writeBoolList(
                numberAt(pos),
                (List<Boolean>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 26: // STRING_LIST:
            SchemaUtil.writeStringList(
                numberAt(pos),
                (List<String>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer);
            break;
          case 27: // MESSAGE_LIST:
            SchemaUtil.writeMessageList(
                numberAt(pos),
                (List<?>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                getMessageFieldSchema(pos));
            break;
          case 28: // BYTES_LIST:
            SchemaUtil.writeBytesList(
                numberAt(pos),
                (List<ByteString>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer);
            break;
          case 29: // UINT32_LIST:
            SchemaUtil.writeUInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 30: // ENUM_LIST:
            SchemaUtil.writeEnumList(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 31: // SFIXED32_LIST:
            SchemaUtil.writeSFixed32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 32: // SFIXED64_LIST:
            SchemaUtil.writeSFixed64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 33: // SINT32_LIST:
            SchemaUtil.writeSInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 34: // SINT64_LIST:
            SchemaUtil.writeSInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                false);
            break;
          case 35: // DOUBLE_LIST_PACKED:
            SchemaUtil.writeDoubleList(
                numberAt(pos),
                (List<Double>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 36: // FLOAT_LIST_PACKED:
            SchemaUtil.writeFloatList(
                numberAt(pos),
                (List<Float>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 37: // INT64_LIST_PACKED:
            SchemaUtil.writeInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 38: // UINT64_LIST_PACKED:
            SchemaUtil.writeUInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 39: // INT32_LIST_PACKED:
            SchemaUtil.writeInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 40: // FIXED64_LIST_PACKED:
            SchemaUtil.writeFixed64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 41: // FIXED32_LIST_PACKED:
            SchemaUtil.writeFixed32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
  
            break;
          case 42: // BOOL_LIST_PACKED:
            SchemaUtil.writeBoolList(
                numberAt(pos),
                (List<Boolean>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 43: // UINT32_LIST_PACKED:
            SchemaUtil.writeUInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 44: // ENUM_LIST_PACKED:
            SchemaUtil.writeEnumList(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 45: // SFIXED32_LIST_PACKED:
            SchemaUtil.writeSFixed32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 46: // SFIXED64_LIST_PACKED:
            SchemaUtil.writeSFixed64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 47: // SINT32_LIST_PACKED:
            SchemaUtil.writeSInt32List(
                numberAt(pos),
                (List<Integer>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 48: // SINT64_LIST_PACKED:
            SchemaUtil.writeSInt64List(
                numberAt(pos),
                (List<Long>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                true);
            break;
          case 49: // GROUP_LIST:
            SchemaUtil.writeGroupList(
                numberAt(pos),
                (List<?>) UnsafeUtil.getObject(message, offset(typeAndOffset)),
                writer,
                getMessageFieldSchema(pos));
            break;
          case 50: // MAP:
            // TODO(dweis): Use schema cache.
            writeMapHelper(writer, number, UnsafeUtil.getObject(message, offset(typeAndOffset)), pos);
            break;
          case 51: // ONEOF_DOUBLE:
            if (isOneofPresent(message, number, pos)) {
              writer.writeDouble(number, oneofDoubleAt(message, offset(typeAndOffset)));
            }
            break;
          case 52: // ONEOF_FLOAT:
            if (isOneofPresent(message, number, pos)) {
              writer.writeFloat(number, oneofFloatAt(message, offset(typeAndOffset)));
            }
            break;
          case 53: // ONEOF_INT64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeInt64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 54: // ONEOF_UINT64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeUInt64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 55: // ONEOF_INT32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeInt32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 56: // ONEOF_FIXED64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeFixed64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 57: // ONEOF_FIXED32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeFixed32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 58: // ONEOF_BOOL:
            if (isOneofPresent(message, number, pos)) {
              writer.writeBool(number, oneofBooleanAt(message, offset(typeAndOffset)));
            }
            break;
          case 59: // ONEOF_STRING:
            if (isOneofPresent(message, number, pos)) {
              writeString(number, UnsafeUtil.getObject(message, offset(typeAndOffset)), writer);
            }
            break;
          case 60: // ONEOF_MESSAGE:
            if (isOneofPresent(message, number, pos)) {
              Object value = UnsafeUtil.getObject(message, offset(typeAndOffset));
              writer.writeMessage(number, value, getMessageFieldSchema(pos));
            }
            break;
          case 61: // ONEOF_BYTES:
            if (isOneofPresent(message, number, pos)) {
              writer.writeBytes(
                  number, (ByteString) UnsafeUtil.getObject(message, offset(typeAndOffset)));
            }
            break;
          case 62: // ONEOF_UINT32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeUInt32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 63: // ONEOF_ENUM:
            if (isOneofPresent(message, number, pos)) {
              writer.writeEnum(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 64: // ONEOF_SFIXED32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSFixed32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 65: // ONEOF_SFIXED64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSFixed64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 66: // ONEOF_SINT32:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSInt32(number, oneofIntAt(message, offset(typeAndOffset)));
            }
            break;
          case 67: // ONEOF_SINT64:
            if (isOneofPresent(message, number, pos)) {
              writer.writeSInt64(number, oneofLongAt(message, offset(typeAndOffset)));
            }
            break;
          case 68: // ONEOF_GROUP:
            if (isOneofPresent(message, number, pos)) {
              writer.writeGroup(
                  number,
                  UnsafeUtil.getObject(message, offset(typeAndOffset)),
                  getMessageFieldSchema(pos));
            }
            break;
          default:
            break;
        }
      }
      while (nextExtension != null) {
        extensionSchema.serializeExtension(writer, nextExtension);
        nextExtension = extensionIterator.hasNext() ? extensionIterator.next() : null;
      }
    }

    private <K, V> void writeMapHelper(Writer writer, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            writer.writeMap(i, this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2)),
                    this.mapFieldSchema.forMapData(obj));
        }
    }

    private <UT, UB> void writeUnknownInMessageTo(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t, Writer writer)
            throws IOException {
        unknownFieldSchema.writeTo(unknownFieldSchema.getFromMessage(t), writer);
    }

    @Override // com.google.oplus.protobuf.Schema
    public void mergeFrom(T t, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        extensionRegistryLite.getClass();
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, t, reader, extensionRegistryLite);
    }

    private <UT, UB, ET extends FieldDescriptorLite<ET>> void mergeFromHelper(
        UnknownFieldSchema<UT, UB> unknownFieldSchema,
        ExtensionSchema<ET> extensionSchema,
        T message,
        Reader reader,
        ExtensionRegistryLite extensionRegistry)
        throws IOException {
      UB unknownFields = null;
      FieldSet<ET> extensions = null;
      try {
        while (true) {
          final int number = reader.getFieldNumber();
          final int pos = positionForFieldNumber(number);
          if (pos < 0) {
            if (number == Reader.READ_DONE) {
              return;
            }
            // Check if it's an extension.
            Object extension =
                !hasExtensions
                    ? null
                    : extensionSchema.findExtensionByNumber(
                        extensionRegistry, defaultInstance, number);
            if (extension != null) {
              if (extensions == null) {
                extensions = extensionSchema.getMutableExtensions(message);
              }
              unknownFields =
                  extensionSchema.parseExtension(
                      reader,
                      extension,
                      extensionRegistry,
                      extensions,
                      unknownFields,
                      unknownFieldSchema);
              continue;
            }
            if (unknownFieldSchema.shouldDiscardUnknownFields(reader)) {
              if (reader.skipField()) {
                continue;
              }
            } else {
              if (unknownFields == null) {
                unknownFields = unknownFieldSchema.getBuilderFromMessage(message);
              }
              // Unknown field.
              if (unknownFieldSchema.mergeOneFieldFrom(unknownFields, reader)) {
                continue;
              }
            }
            // Done reading.
            return;
          }
          final int typeAndOffset = typeAndOffsetAt(pos);
  
          try {
            switch (type(typeAndOffset)) {
              case 0: // DOUBLE:
                UnsafeUtil.putDouble(message, offset(typeAndOffset), reader.readDouble());
                setFieldPresent(message, pos);
                break;
              case 1: // FLOAT:
                UnsafeUtil.putFloat(message, offset(typeAndOffset), reader.readFloat());
                setFieldPresent(message, pos);
                break;
              case 2: // INT64:
                UnsafeUtil.putLong(message, offset(typeAndOffset), reader.readInt64());
                setFieldPresent(message, pos);
                break;
              case 3: // UINT64:
                UnsafeUtil.putLong(message, offset(typeAndOffset), reader.readUInt64());
                setFieldPresent(message, pos);
                break;
              case 4: // INT32:
                UnsafeUtil.putInt(message, offset(typeAndOffset), reader.readInt32());
                setFieldPresent(message, pos);
                break;
              case 5: // FIXED64:
                UnsafeUtil.putLong(message, offset(typeAndOffset), reader.readFixed64());
                setFieldPresent(message, pos);
                break;
              case 6: // FIXED32:
                UnsafeUtil.putInt(message, offset(typeAndOffset), reader.readFixed32());
                setFieldPresent(message, pos);
                break;
              case 7: // BOOL:
                UnsafeUtil.putBoolean(message, offset(typeAndOffset), reader.readBool());
                setFieldPresent(message, pos);
                break;
              case 8: // STRING:
                readString(message, typeAndOffset, reader);
                setFieldPresent(message, pos);
                break;
              case 9:
                { // MESSAGE:
                  if (isFieldPresent(message, pos)) {
                    Object mergedResult =
                        Internal.mergeMessage(
                            UnsafeUtil.getObject(message, offset(typeAndOffset)),
                            reader.readMessageBySchemaWithCheck(
                                (Schema<T>) getMessageFieldSchema(pos), extensionRegistry));
                    UnsafeUtil.putObject(message, offset(typeAndOffset), mergedResult);
                  } else {
                    UnsafeUtil.putObject(
                        message,
                        offset(typeAndOffset),
                        reader.readMessageBySchemaWithCheck(
                            (Schema<T>) getMessageFieldSchema(pos), extensionRegistry));
                    setFieldPresent(message, pos);
                  }
                  break;
                }
              case 10: // BYTES:
                UnsafeUtil.putObject(message, offset(typeAndOffset), reader.readBytes());
                setFieldPresent(message, pos);
                break;
              case 11: // UINT32:
                UnsafeUtil.putInt(message, offset(typeAndOffset), reader.readUInt32());
                setFieldPresent(message, pos);
                break;
              case 12: // ENUM:
                {
                  int enumValue = reader.readEnum();
                  EnumVerifier enumVerifier = getEnumFieldVerifier(pos);
                  if (enumVerifier == null || enumVerifier.isInRange(enumValue)) {
                    UnsafeUtil.putInt(message, offset(typeAndOffset), enumValue);
                    setFieldPresent(message, pos);
                  } else {
                    unknownFields =
                        SchemaUtil.storeUnknownEnum(
                            number, enumValue, unknownFields, unknownFieldSchema);
                  }
                  break;
                }
              case 13: // SFIXED32:
                UnsafeUtil.putInt(message, offset(typeAndOffset), reader.readSFixed32());
                setFieldPresent(message, pos);
                break;
              case 14: // SFIXED64:
                UnsafeUtil.putLong(message, offset(typeAndOffset), reader.readSFixed64());
                setFieldPresent(message, pos);
                break;
              case 15: // SINT32:
                UnsafeUtil.putInt(message, offset(typeAndOffset), reader.readSInt32());
                setFieldPresent(message, pos);
                break;
              case 16: // SINT64:
                UnsafeUtil.putLong(message, offset(typeAndOffset), reader.readSInt64());
                setFieldPresent(message, pos);
                break;
              case 17:
                { // GROUP:
                  if (isFieldPresent(message, pos)) {
                    Object mergedResult =
                        Internal.mergeMessage(
                            UnsafeUtil.getObject(message, offset(typeAndOffset)),
                            reader.readGroupBySchemaWithCheck(
                                (Schema<T>) getMessageFieldSchema(pos), extensionRegistry));
                    UnsafeUtil.putObject(message, offset(typeAndOffset), mergedResult);
                  } else {
                    UnsafeUtil.putObject(
                        message,
                        offset(typeAndOffset),
                        reader.readGroupBySchemaWithCheck(
                            (Schema<T>) getMessageFieldSchema(pos), extensionRegistry));
                    setFieldPresent(message, pos);
                  }
                  break;
                }
              case 18: // DOUBLE_LIST:
                reader.readDoubleList(
                    listFieldSchema.<Double>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 19: // FLOAT_LIST:
                reader.readFloatList(
                    listFieldSchema.<Float>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 20: // INT64_LIST:
                reader.readInt64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 21: // UINT64_LIST:
                reader.readUInt64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 22: // INT32_LIST:
                reader.readInt32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 23: // FIXED64_LIST:
                reader.readFixed64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 24: // FIXED32_LIST:
                reader.readFixed32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 25: // BOOL_LIST:
                reader.readBoolList(
                    listFieldSchema.<Boolean>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 26: // STRING_LIST:
                readStringList(message, typeAndOffset, reader);
                break;
              case 27:
                { // MESSAGE_LIST:
                  readMessageList(
                      message,
                      typeAndOffset,
                      reader,
                      (Schema<T>) getMessageFieldSchema(pos),
                      extensionRegistry);
                  break;
                }
              case 28: // BYTES_LIST:
                reader.readBytesList(
                    listFieldSchema.<ByteString>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 29: // UINT32_LIST:
                reader.readUInt32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 30: // ENUM_LIST:
                {
                  List<Integer> enumList =
                      listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset));
                  reader.readEnumList(enumList);
                  unknownFields =
                      SchemaUtil.filterUnknownEnumList(
                          number,
                          enumList,
                          getEnumFieldVerifier(pos),
                          unknownFields,
                          unknownFieldSchema);
                  break;
                }
              case 31: // SFIXED32_LIST:
                reader.readSFixed32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 32: // SFIXED64_LIST:
                reader.readSFixed64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 33: // SINT32_LIST:
                reader.readSInt32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 34: // SINT64_LIST:
                reader.readSInt64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 35: // DOUBLE_LIST_PACKED:
                reader.readDoubleList(
                    listFieldSchema.<Double>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 36: // FLOAT_LIST_PACKED:
                reader.readFloatList(
                    listFieldSchema.<Float>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 37: // INT64_LIST_PACKED:
                reader.readInt64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 38: // UINT64_LIST_PACKED:
                reader.readUInt64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 39: // INT32_LIST_PACKED:
                reader.readInt32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 40: // FIXED64_LIST_PACKED:
                reader.readFixed64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 41: // FIXED32_LIST_PACKED:
                reader.readFixed32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 42: // BOOL_LIST_PACKED:
                reader.readBoolList(
                    listFieldSchema.<Boolean>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 43: // UINT32_LIST_PACKED:
                reader.readUInt32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 44: // ENUM_LIST_PACKED:
                {
                  List<Integer> enumList =
                      listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset));
                  reader.readEnumList(enumList);
                  unknownFields =
                      SchemaUtil.filterUnknownEnumList(
                          number,
                          enumList,
                          getEnumFieldVerifier(pos),
                          unknownFields,
                          unknownFieldSchema);
                  break;
                }
              case 45: // SFIXED32_LIST_PACKED:
                reader.readSFixed32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 46: // SFIXED64_LIST_PACKED:
                reader.readSFixed64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 47: // SINT32_LIST_PACKED:
                reader.readSInt32List(
                    listFieldSchema.<Integer>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 48: // SINT64_LIST_PACKED:
                reader.readSInt64List(
                    listFieldSchema.<Long>mutableListAt(message, offset(typeAndOffset)));
                break;
              case 49:
                { // GROUP_LIST:
                  readGroupList(
                      message,
                      offset(typeAndOffset),
                      reader,
                      (Schema<T>) getMessageFieldSchema(pos),
                      extensionRegistry);
                  break;
                }
              case 50: // MAP:
                mergeMap(message, pos, getMapFieldDefaultEntry(pos), extensionRegistry, reader);
                break;
              case 51: // ONEOF_DOUBLE:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Double.valueOf(reader.readDouble()));
                setOneofPresent(message, number, pos);
                break;
              case 52: // ONEOF_FLOAT:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Float.valueOf(reader.readFloat()));
                setOneofPresent(message, number, pos);
                break;
              case 53: // ONEOF_INT64:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Long.valueOf(reader.readInt64()));
                setOneofPresent(message, number, pos);
                break;
              case 54: // ONEOF_UINT64:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Long.valueOf(reader.readUInt64()));
                setOneofPresent(message, number, pos);
                break;
              case 55: // ONEOF_INT32:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Integer.valueOf(reader.readInt32()));
                setOneofPresent(message, number, pos);
                break;
              case 56: // ONEOF_FIXED64:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Long.valueOf(reader.readFixed64()));
                setOneofPresent(message, number, pos);
                break;
              case 57: // ONEOF_FIXED32:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Integer.valueOf(reader.readFixed32()));
                setOneofPresent(message, number, pos);
                break;
              case 58: // ONEOF_BOOL:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Boolean.valueOf(reader.readBool()));
                setOneofPresent(message, number, pos);
                break;
              case 59: // ONEOF_STRING:
                readString(message, typeAndOffset, reader);
                setOneofPresent(message, number, pos);
                break;
              case 60: // ONEOF_MESSAGE:
                if (isOneofPresent(message, number, pos)) {
                  Object mergedResult =
                      Internal.mergeMessage(
                          UnsafeUtil.getObject(message, offset(typeAndOffset)),
                          reader.readMessageBySchemaWithCheck(
                              getMessageFieldSchema(pos), extensionRegistry));
                  UnsafeUtil.putObject(message, offset(typeAndOffset), mergedResult);
                } else {
                  UnsafeUtil.putObject(
                      message,
                      offset(typeAndOffset),
                      reader.readMessageBySchemaWithCheck(
                          getMessageFieldSchema(pos), extensionRegistry));
                  setFieldPresent(message, pos);
                }
                setOneofPresent(message, number, pos);
                break;
              case 61: // ONEOF_BYTES:
                UnsafeUtil.putObject(message, offset(typeAndOffset), reader.readBytes());
                setOneofPresent(message, number, pos);
                break;
              case 62: // ONEOF_UINT32:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Integer.valueOf(reader.readUInt32()));
                setOneofPresent(message, number, pos);
                break;
              case 63: // ONEOF_ENUM:
                {
                  int enumValue = reader.readEnum();
                  EnumVerifier enumVerifier = getEnumFieldVerifier(pos);
                  if (enumVerifier == null || enumVerifier.isInRange(enumValue)) {
                    UnsafeUtil.putObject(message, offset(typeAndOffset), enumValue);
                    setOneofPresent(message, number, pos);
                  } else {
                    unknownFields =
                        SchemaUtil.storeUnknownEnum(
                            number, enumValue, unknownFields, unknownFieldSchema);
                  }
                  break;
                }
              case 64: // ONEOF_SFIXED32:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Integer.valueOf(reader.readSFixed32()));
                setOneofPresent(message, number, pos);
                break;
              case 65: // ONEOF_SFIXED64:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Long.valueOf(reader.readSFixed64()));
                setOneofPresent(message, number, pos);
                break;
              case 66: // ONEOF_SINT32:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Integer.valueOf(reader.readSInt32()));
                setOneofPresent(message, number, pos);
                break;
              case 67: // ONEOF_SINT64:
                UnsafeUtil.putObject(
                    message, offset(typeAndOffset), Long.valueOf(reader.readSInt64()));
                setOneofPresent(message, number, pos);
                break;
              case 68: // ONEOF_GROUP:
                UnsafeUtil.putObject(
                    message,
                    offset(typeAndOffset),
                    reader.readGroupBySchemaWithCheck(getMessageFieldSchema(pos), extensionRegistry));
                setOneofPresent(message, number, pos);
                break;
              default:
                // Assume we've landed on an empty entry. Treat it as an unknown field.
                if (unknownFields == null) {
                  unknownFields = unknownFieldSchema.newBuilder();
                }
                if (!unknownFieldSchema.mergeOneFieldFrom(unknownFields, reader)) {
                  return;
                }
                break;
            }
          } catch (InvalidProtocolBufferException.InvalidWireTypeException e) {
            // Treat fields with an invalid wire type as unknown fields
            // (i.e. same as the default case).
            if (unknownFieldSchema.shouldDiscardUnknownFields(reader)) {
              if (!reader.skipField()) {
                return;
              }
            } else {
              if (unknownFields == null) {
                unknownFields = unknownFieldSchema.getBuilderFromMessage(message);
              }
              if (!unknownFieldSchema.mergeOneFieldFrom(unknownFields, reader)) {
                return;
              }
            }
          }
        }
      } finally {
        for (int i = checkInitializedCount; i < repeatedFieldOffsetStart; i++) {
          unknownFields =
              filterMapUnknownEnumValues(message, intArray[i], unknownFields, unknownFieldSchema);
        }
        if (unknownFields != null) {
          unknownFieldSchema.setBuilderToMessage(message, unknownFields);
        }
      }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UnknownFieldSetLite getMutableUnknownFields(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite == UnknownFieldSetLite.getDefaultInstance()) {
            UnknownFieldSetLite newInstance = UnknownFieldSetLite.newInstance();
            generatedMessageLite.unknownFields = newInstance;
            return newInstance;
        }
        return unknownFieldSetLite;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /*
     * renamed from: com.google.oplus.protobuf.MessageSchema$1 reason: invalid class
     * name
     */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
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
                int decodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Boolean.valueOf(registers.long1 != 0);
                return decodeVarint64;
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
                int decodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                registers.object1 = Integer.valueOf(registers.int1);
                return decodeVarint32;
            case 12:
            case 13:
                int decodeVarint642 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Long.valueOf(registers.long1);
                return decodeVarint642;
            case 14:
                return ArrayDecoders.decodeMessageField(Protobuf.getInstance().schemaFor((Class) cls), bArr, i, i2,
                        registers);
            case 15:
                int decodeVarint322 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                registers.object1 = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                return decodeVarint322;
            case 16:
                int decodeVarint643 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                return decodeVarint643;
            case 17:
                return ArrayDecoders.decodeStringRequireUtf8(bArr, i, registers);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /*
     * JADX WARN: Type inference failed for: r19v0, types: [java.util.Map,
     * java.util.Map<K, V>]
     */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    private <K, V> int decodeMapEntry(byte[] bArr, int i, int i2, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map,
            ArrayDecoders.Registers registers) throws IOException {
        int i3;
        int decodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
        int i4 = registers.int1;
        if (i4 < 0 || i4 > i2 - decodeVarint32) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i5 = decodeVarint32 + i4;
        K k = metadata.defaultKey;
        V v = metadata.defaultValue;
        while (decodeVarint32 < i5) {
            int i6 = decodeVarint32 + 1;
            byte b = bArr[decodeVarint32];
            if (b < 0) {
                i3 = ArrayDecoders.decodeVarint32(b, bArr, i6, registers);
                b = registers.int1;
            } else {
                i3 = i6;
            }
            int i7 = b >>> 3;
            int i8 = b & 7;
            if (i7 == 1) {
                if (i8 == metadata.keyType.getWireType()) {
                    decodeVarint32 = decodeMapEntryValue(bArr, i3, i2, metadata.keyType, null, registers);
                    k = registers.object1;
                } else {
                    decodeVarint32 = ArrayDecoders.skipField(b, bArr, i3, i2, registers);
                }
            } else {
                if (i7 == 2 && i8 == metadata.valueType.getWireType()) {
                    decodeVarint32 = decodeMapEntryValue(bArr, i3, i2, metadata.valueType,
                            metadata.defaultValue.getClass(), registers);
                    v = registers.object1;
                }
                decodeVarint32 = ArrayDecoders.skipField(b, bArr, i3, i2, registers);
            }
        }
        if (decodeVarint32 != i5) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(k, v);
        return i5;
    }

    private int parseRepeatedField(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7,
            long j2, ArrayDecoders.Registers registers) throws IOException {
        int decodeVarint32List;
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe.getObject(t, j2);
        if (!protobufList.isModifiable()) {
            int size = protobufList.size();
            protobufList = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            unsafe.putObject(t, j2, protobufList);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedDoubleList(bArr, i, protobufList, registers);
                }
                if (i5 == 1) {
                    return ArrayDecoders.decodeDoubleList(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedFloatList(bArr, i, protobufList, registers);
                }
                if (i5 == 5) {
                    return ArrayDecoders.decodeFloatList(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case 20:
            case 21:
            case 37:
            case ApsConstant.APS_SCENE_BOKEH_AINR_CHDR /* 38 */:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedVarint64List(bArr, i, protobufList, registers);
                }
                if (i5 == 0) {
                    return ArrayDecoders.decodeVarint64List(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case 22:
            case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
            case DescriptorProtos.FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
            case ApsConstant.FEATURE_TYPE_CHDR_MFNR /* 43 */:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedVarint32List(bArr, i, protobufList, registers);
                }
                if (i5 == 0) {
                    return ArrayDecoders.decodeVarint32List(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedFixed64List(bArr, i, protobufList, registers);
                }
                if (i5 == 1) {
                    return ArrayDecoders.decodeFixed64List(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedFixed32List(bArr, i, protobufList, registers);
                }
                if (i5 == 5) {
                    return ArrayDecoders.decodeFixed32List(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
            case 42:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedBoolList(bArr, i, protobufList, registers);
                }
                if (i5 == 0) {
                    return ArrayDecoders.decodeBoolList(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        return ArrayDecoders.decodeStringList(i3, bArr, i, i2, protobufList, registers);
                    }
                    return ArrayDecoders.decodeStringListRequireUtf8(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case 27:
                if (i5 == 2) {
                    return ArrayDecoders.decodeMessageList(getMessageFieldSchema(i6), i3, bArr, i, i2, protobufList,
                            registers);
                }
                break;
            case 28:
                if (i5 == 2) {
                    return ArrayDecoders.decodeBytesList(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case 30:
            case DescriptorProtos.FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                if (i5 == 2) {
                    decodeVarint32List = ArrayDecoders.decodePackedVarint32List(bArr, i, protobufList, registers);
                } else if (i5 == 0) {
                    decodeVarint32List = ArrayDecoders.decodeVarint32List(i3, bArr, i, i2, protobufList, registers);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t;
                UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
                if (unknownFieldSetLite == UnknownFieldSetLite.getDefaultInstance()) {
                    unknownFieldSetLite = null;
                }
                UnknownFieldSetLite unknownFieldSetLite2 = (UnknownFieldSetLite) SchemaUtil.filterUnknownEnumList(i4,
                        (List<Integer>) protobufList, getEnumFieldVerifier(i6), unknownFieldSetLite,
                        (UnknownFieldSchema<UT, UnknownFieldSetLite>) this.unknownFieldSchema);
                if (unknownFieldSetLite2 != null) {
                    generatedMessageLite.unknownFields = unknownFieldSetLite2;
                }
                return decodeVarint32List;
            case 33:
            case ApsConstant.FEATURE_TYPE_AHEAD_MD_HDR_ULTRA /* 47 */:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedSInt32List(bArr, i, protobufList, registers);
                }
                if (i5 == 0) {
                    return ArrayDecoders.decodeSInt32List(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case 34:
            case ApsConstant.FEATURE_TYPE_TURBO_RAW /* 48 */:
                if (i5 == 2) {
                    return ArrayDecoders.decodePackedSInt64List(bArr, i, protobufList, registers);
                }
                if (i5 == 0) {
                    return ArrayDecoders.decodeSInt64List(i3, bArr, i, i2, protobufList, registers);
                }
                break;
            case ApsConstant.FEATURE_TYPE_TURBO_RAW_IZOOM /* 49 */:
                if (i5 == 3) {
                    return ArrayDecoders.decodeGroupList(getMessageFieldSchema(i6), i3, bArr, i, i2, protobufList,
                            registers);
                }
                break;
        }
        return i;
    }

    private <K, V> int parseMapField(T t, byte[] bArr, int i, int i2, int i3, long j, ArrayDecoders.Registers registers)
            throws IOException {
        Unsafe unsafe = UNSAFE;
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i3);
        Object object = unsafe.getObject(t, j);
        if (this.mapFieldSchema.isImmutable(object)) {
            Object newMapField = this.mapFieldSchema.newMapField(mapFieldDefaultEntry);
            this.mapFieldSchema.mergeFrom(newMapField, object);
            unsafe.putObject(t, j, newMapField);
            object = newMapField;
        }
        return decodeMapEntry(bArr, i, i2, this.mapFieldSchema.forMapMetadata(mapFieldDefaultEntry),
                this.mapFieldSchema.forMutableMapData(object), registers);
    }

    private int parseOneofField(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8,
            ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe = UNSAFE;
        long j2 = this.buffer[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(ArrayDecoders.decodeDouble(bArr, i)));
                    int i9 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(ArrayDecoders.decodeFloat(bArr, i)));
                    int i10 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i10;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int decodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                    unsafe.putObject(t, j, Long.valueOf(registers.long1));
                    unsafe.putInt(t, j2, i4);
                    return decodeVarint64;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int decodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    unsafe.putObject(t, j, Integer.valueOf(registers.int1));
                    unsafe.putInt(t, j2, i4);
                    return decodeVarint32;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(ArrayDecoders.decodeFixed64(bArr, i)));
                    int i11 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i11;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(ArrayDecoders.decodeFixed32(bArr, i)));
                    int i12 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i12;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int decodeVarint642 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                    unsafe.putObject(t, j, Boolean.valueOf(registers.long1 != 0));
                    unsafe.putInt(t, j2, i4);
                    return decodeVarint642;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int decodeVarint322 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    int i13 = registers.int1;
                    if (i13 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & ENFORCE_UTF8_MASK) != 0
                            && !Utf8.isValidUtf8(bArr, decodeVarint322, decodeVarint322 + i13)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, decodeVarint322, i13, Internal.UTF_8));
                        decodeVarint322 += i13;
                    }
                    unsafe.putInt(t, j2, i4);
                    return decodeVarint322;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int decodeMessageField = ArrayDecoders.decodeMessageField(getMessageFieldSchema(i8), bArr, i, i2,
                            registers);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, registers.object1);
                    } else {
                        unsafe.putObject(t, j, Internal.mergeMessage(object, registers.object1));
                    }
                    unsafe.putInt(t, j2, i4);
                    return decodeMessageField;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int decodeBytes = ArrayDecoders.decodeBytes(bArr, i, registers);
                    unsafe.putObject(t, j, registers.object1);
                    unsafe.putInt(t, j2, i4);
                    return decodeBytes;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int decodeVarint323 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    int i14 = registers.int1;
                    Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i8);
                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i14)) {
                        unsafe.putObject(t, j, Integer.valueOf(i14));
                        unsafe.putInt(t, j2, i4);
                    } else {
                        getMutableUnknownFields(t).storeField(i3, Long.valueOf(i14));
                    }
                    return decodeVarint323;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int decodeVarint324 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    unsafe.putObject(t, j, Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1)));
                    unsafe.putInt(t, j2, i4);
                    return decodeVarint324;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int decodeVarint643 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                    unsafe.putObject(t, j, Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1)));
                    unsafe.putInt(t, j2, i4);
                    return decodeVarint643;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int decodeGroupField = ArrayDecoders.decodeGroupField(getMessageFieldSchema(i8), bArr, i, i2,
                            (i3 & (-8)) | 4, registers);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, registers.object1);
                    } else {
                        unsafe.putObject(t, j, Internal.mergeMessage(object2, registers.object1));
                    }
                    unsafe.putInt(t, j2, i4);
                    return decodeGroupField;
                }
                break;
        }
        return i;
    }

    private Schema getMessageFieldSchema(int i) {
        int i2 = (i / 3) * 2;
        Schema schema = (Schema) this.objects[i2];
        if (schema != null) {
            return schema;
        }
        Schema<T> schemaFor = Protobuf.getInstance().schemaFor((Class) ((Class) this.objects[i2 + 1]));
        this.objects[i2] = schemaFor;
        return schemaFor;
    }

    private Object getMapFieldDefaultEntry(int i) {
        return this.objects[(i / 3) * 2];
    }

    private Internal.EnumVerifier getEnumFieldVerifier(int i) {
        return (Internal.EnumVerifier) this.objects[((i / 3) * 2) + 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int parseProto2Message(T t, byte[] bArr, int i, int i2, int i3, ArrayDecoders.Registers registers)
            throws IOException {
        Unsafe unsafe;
        int i4;
        MessageSchema<T> messageSchema;
        int i5;
        T t2;
        byte b;
        int positionForFieldNumber;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        T t3;
        T t4;
        int i14;
        T t5;
        int i15;
        int i16;
        MessageSchema<T> messageSchema2 = this;
        T t6 = t;
        byte[] bArr2 = bArr;
        int i17 = i2;
        int i18 = i3;
        ArrayDecoders.Registers registers2 = registers;
        Unsafe unsafe2 = UNSAFE;
        int i19 = i;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = -1;
        int i24 = 1048575;
        while (true) {
            if (i19 < i17) {
                int i25 = i19 + 1;
                byte b2 = bArr2[i19];
                if (b2 < 0) {
                    int decodeVarint32 = ArrayDecoders.decodeVarint32(b2, bArr2, i25, registers2);
                    b = registers2.int1;
                    i25 = decodeVarint32;
                } else {
                    b = b2;
                }
                int i26 = b >>> 3;
                int i27 = b & 7;
                if (i26 > i23) {
                    positionForFieldNumber = messageSchema2.positionForFieldNumber(i26, i20 / 3);
                } else {
                    positionForFieldNumber = messageSchema2.positionForFieldNumber(i26);
                }
                int i28 = positionForFieldNumber;
                if (i28 == -1) {
                    i6 = i26;
                    i7 = i25;
                    i8 = b;
                    i9 = i22;
                    i10 = i24;
                    unsafe = unsafe2;
                    i4 = i18;
                    i11 = 0;
                } else {
                    int i29 = messageSchema2.buffer[i28 + 1];
                    int type = type(i29);
                    long offset = offset(i29);
                    int i30 = b;
                    if (type <= 17) {
                        int i31 = messageSchema2.buffer[i28 + 2];
                        int i32 = 1 << (i31 >>> 20);
                        int i33 = i31 & 1048575;
                        if (i33 != i24) {
                            if (i24 != 1048575) {
                                unsafe2.putInt(t6, i24, i22);
                            }
                            i22 = unsafe2.getInt(t6, i33);
                            i10 = i33;
                        } else {
                            i10 = i24;
                        }
                        int i34 = i22;
                        switch (type) {
                            case 0:
                                t3 = t6;
                                i12 = i28;
                                i6 = i26;
                                bArr2 = bArr;
                                i13 = i30;
                                if (i27 == 1) {
                                    UnsafeUtil.putDouble(t3, offset, ArrayDecoders.decodeDouble(bArr2, i25));
                                    i19 = i25 + 8;
                                    i22 = i34 | i32;
                                    i17 = i2;
                                    t6 = t3;
                                    i20 = i12;
                                    i21 = i13;
                                    i23 = i6;
                                    i24 = i10;
                                    i18 = i3;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 1:
                                t3 = t6;
                                i12 = i28;
                                i6 = i26;
                                bArr2 = bArr;
                                i13 = i30;
                                if (i27 == 5) {
                                    UnsafeUtil.putFloat(t3, offset, ArrayDecoders.decodeFloat(bArr2, i25));
                                    i19 = i25 + 4;
                                    i22 = i34 | i32;
                                    i17 = i2;
                                    t6 = t3;
                                    i20 = i12;
                                    i21 = i13;
                                    i23 = i6;
                                    i24 = i10;
                                    i18 = i3;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 2:
                            case 3:
                                T t7 = t6;
                                i12 = i28;
                                i6 = i26;
                                bArr2 = bArr;
                                i13 = i30;
                                if (i27 == 0) {
                                    int decodeVarint64 = ArrayDecoders.decodeVarint64(bArr2, i25, registers2);
                                    t4 = t7;
                                    unsafe2.putLong(t, offset, registers2.long1);
                                    i22 = i34 | i32;
                                    i19 = decodeVarint64;
                                    i20 = i12;
                                    i21 = i13;
                                    t6 = t4;
                                    i23 = i6;
                                    i24 = i10;
                                    i17 = i2;
                                    i18 = i3;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 4:
                            case 11:
                                t3 = t6;
                                i12 = i28;
                                i6 = i26;
                                bArr2 = bArr;
                                i13 = i30;
                                if (i27 == 0) {
                                    i19 = ArrayDecoders.decodeVarint32(bArr2, i25, registers2);
                                    unsafe2.putInt(t3, offset, registers2.int1);
                                    i22 = i34 | i32;
                                    i17 = i2;
                                    t6 = t3;
                                    i20 = i12;
                                    i21 = i13;
                                    i23 = i6;
                                    i24 = i10;
                                    i18 = i3;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 5:
                            case 14:
                                T t8 = t6;
                                i12 = i28;
                                i6 = i26;
                                bArr2 = bArr;
                                i13 = i30;
                                if (i27 == 1) {
                                    t4 = t8;
                                    unsafe2.putLong(t, offset, ArrayDecoders.decodeFixed64(bArr2, i25));
                                    i19 = i25 + 8;
                                    i22 = i34 | i32;
                                    i20 = i12;
                                    i21 = i13;
                                    t6 = t4;
                                    i23 = i6;
                                    i24 = i10;
                                    i17 = i2;
                                    i18 = i3;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 6:
                            case 13:
                                i14 = i2;
                                t5 = t6;
                                i12 = i28;
                                i6 = i26;
                                bArr2 = bArr;
                                i13 = i30;
                                if (i27 == 5) {
                                    unsafe2.putInt(t5, offset, ArrayDecoders.decodeFixed32(bArr2, i25));
                                    i19 = i25 + 4;
                                    int i35 = i34 | i32;
                                    t6 = t5;
                                    i17 = i14;
                                    i20 = i12;
                                    i21 = i13;
                                    i24 = i10;
                                    i18 = i3;
                                    i22 = i35;
                                    i23 = i6;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 7:
                                i14 = i2;
                                t5 = t6;
                                i12 = i28;
                                i6 = i26;
                                bArr2 = bArr;
                                i13 = i30;
                                if (i27 == 0) {
                                    i19 = ArrayDecoders.decodeVarint64(bArr2, i25, registers2);
                                    UnsafeUtil.putBoolean(t5, offset, registers2.long1 != 0);
                                    int i352 = i34 | i32;
                                    t6 = t5;
                                    i17 = i14;
                                    i20 = i12;
                                    i21 = i13;
                                    i24 = i10;
                                    i18 = i3;
                                    i22 = i352;
                                    i23 = i6;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 8:
                                i14 = i2;
                                t5 = t6;
                                i12 = i28;
                                i6 = i26;
                                bArr2 = bArr;
                                i13 = i30;
                                if (i27 == 2) {
                                    if ((i29 & ENFORCE_UTF8_MASK) == 0) {
                                        i19 = ArrayDecoders.decodeString(bArr2, i25, registers2);
                                    } else {
                                        i19 = ArrayDecoders.decodeStringRequireUtf8(bArr2, i25, registers2);
                                    }
                                    unsafe2.putObject(t5, offset, registers2.object1);
                                    int i3522 = i34 | i32;
                                    t6 = t5;
                                    i17 = i14;
                                    i20 = i12;
                                    i21 = i13;
                                    i24 = i10;
                                    i18 = i3;
                                    i22 = i3522;
                                    i23 = i6;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 9:
                                t5 = t6;
                                i12 = i28;
                                i6 = i26;
                                i13 = i30;
                                bArr2 = bArr;
                                if (i27 == 2) {
                                    i14 = i2;
                                    i19 = ArrayDecoders.decodeMessageField(messageSchema2.getMessageFieldSchema(i12),
                                            bArr2, i25, i14, registers2);
                                    if ((i34 & i32) == 0) {
                                        unsafe2.putObject(t5, offset, registers2.object1);
                                    } else {
                                        unsafe2.putObject(t5, offset, Internal
                                                .mergeMessage(unsafe2.getObject(t5, offset), registers2.object1));
                                    }
                                    int i35222 = i34 | i32;
                                    t6 = t5;
                                    i17 = i14;
                                    i20 = i12;
                                    i21 = i13;
                                    i24 = i10;
                                    i18 = i3;
                                    i22 = i35222;
                                    i23 = i6;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 10:
                                t3 = t6;
                                i12 = i28;
                                i6 = i26;
                                i13 = i30;
                                bArr2 = bArr;
                                if (i27 == 2) {
                                    i19 = ArrayDecoders.decodeBytes(bArr2, i25, registers2);
                                    unsafe2.putObject(t3, offset, registers2.object1);
                                    i22 = i34 | i32;
                                    i17 = i2;
                                    t6 = t3;
                                    i20 = i12;
                                    i21 = i13;
                                    i23 = i6;
                                    i24 = i10;
                                    i18 = i3;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 12:
                                t3 = t6;
                                i12 = i28;
                                i6 = i26;
                                i13 = i30;
                                bArr2 = bArr;
                                if (i27 != 0) {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                } else {
                                    i19 = ArrayDecoders.decodeVarint32(bArr2, i25, registers2);
                                    int i36 = registers2.int1;
                                    Internal.EnumVerifier enumFieldVerifier = messageSchema2.getEnumFieldVerifier(i12);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i36)) {
                                        unsafe2.putInt(t3, offset, i36);
                                        i22 = i34 | i32;
                                        i17 = i2;
                                        t6 = t3;
                                        i20 = i12;
                                        i21 = i13;
                                        i23 = i6;
                                        i24 = i10;
                                        i18 = i3;
                                        break;
                                    } else {
                                        getMutableUnknownFields(t).storeField(i13, Long.valueOf(i36));
                                        i17 = i2;
                                        t6 = t3;
                                        i22 = i34;
                                        i20 = i12;
                                        i21 = i13;
                                        i23 = i6;
                                        i24 = i10;
                                        i18 = i3;
                                    }
                                }
                                break;
                            case 15:
                                i12 = i28;
                                i13 = i30;
                                bArr2 = bArr;
                                i6 = i26;
                                if (i27 == 0) {
                                    i19 = ArrayDecoders.decodeVarint32(bArr2, i25, registers2);
                                    t3 = t;
                                    unsafe2.putInt(t3, offset, CodedInputStream.decodeZigZag32(registers2.int1));
                                    i22 = i34 | i32;
                                    i17 = i2;
                                    t6 = t3;
                                    i20 = i12;
                                    i21 = i13;
                                    i23 = i6;
                                    i24 = i10;
                                    i18 = i3;
                                    break;
                                } else {
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 16:
                                i12 = i28;
                                i6 = i26;
                                if (i27 == 0) {
                                    bArr2 = bArr;
                                    int decodeVarint642 = ArrayDecoders.decodeVarint64(bArr2, i25, registers2);
                                    i13 = i30;
                                    unsafe2.putLong(t, offset, CodedInputStream.decodeZigZag64(registers2.long1));
                                    i22 = i34 | i32;
                                    t6 = t;
                                    i17 = i2;
                                    i19 = decodeVarint642;
                                    i20 = i12;
                                    i21 = i13;
                                    i23 = i6;
                                    i24 = i10;
                                    i18 = i3;
                                    break;
                                } else {
                                    i13 = i30;
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            case 17:
                                if (i27 == 3) {
                                    i19 = ArrayDecoders.decodeGroupField(messageSchema2.getMessageFieldSchema(i28),
                                            bArr, i25, i2, (i26 << 3) | 4, registers);
                                    if ((i34 & i32) == 0) {
                                        unsafe2.putObject(t6, offset, registers2.object1);
                                    } else {
                                        unsafe2.putObject(t6, offset, Internal
                                                .mergeMessage(unsafe2.getObject(t6, offset), registers2.object1));
                                    }
                                    i22 = i34 | i32;
                                    bArr2 = bArr;
                                    i17 = i2;
                                    i18 = i3;
                                    i21 = i30;
                                    i20 = i28;
                                    i23 = i26;
                                    i24 = i10;
                                    break;
                                } else {
                                    i12 = i28;
                                    i6 = i26;
                                    i13 = i30;
                                    i7 = i25;
                                    i9 = i34;
                                    i11 = i12;
                                    unsafe = unsafe2;
                                    i8 = i13;
                                    i4 = i3;
                                    break;
                                }
                            default:
                                i12 = i28;
                                i13 = i30;
                                i6 = i26;
                                i7 = i25;
                                i9 = i34;
                                i11 = i12;
                                unsafe = unsafe2;
                                i8 = i13;
                                i4 = i3;
                                break;
                        }
                    } else {
                        i6 = i26;
                        T t9 = t6;
                        bArr2 = bArr;
                        if (type != 27) {
                            i11 = i28;
                            i9 = i22;
                            i10 = i24;
                            if (type <= 49) {
                                int i37 = i25;
                                unsafe = unsafe2;
                                i16 = i30;
                                i19 = parseRepeatedField(t, bArr, i25, i2, i30, i6, i27, i11, i29, type, offset,
                                        registers);
                                if (i19 != i37) {
                                    messageSchema2 = this;
                                    t6 = t;
                                    bArr2 = bArr;
                                    i17 = i2;
                                    i18 = i3;
                                    registers2 = registers;
                                    i23 = i6;
                                    i21 = i16;
                                    i20 = i11;
                                    i22 = i9;
                                    i24 = i10;
                                    unsafe2 = unsafe;
                                } else {
                                    i4 = i3;
                                    i7 = i19;
                                    i8 = i16;
                                }
                            } else {
                                i15 = i25;
                                unsafe = unsafe2;
                                i16 = i30;
                                if (type != 50) {
                                    i19 = parseOneofField(t, bArr, i15, i2, i16, i6, i27, i29, type, offset, i11,
                                            registers);
                                    if (i19 != i15) {
                                        messageSchema2 = this;
                                        t6 = t;
                                        bArr2 = bArr;
                                        i17 = i2;
                                        i18 = i3;
                                        registers2 = registers;
                                        i23 = i6;
                                        i21 = i16;
                                        i20 = i11;
                                        i22 = i9;
                                        i24 = i10;
                                        unsafe2 = unsafe;
                                    } else {
                                        i4 = i3;
                                        i7 = i19;
                                        i8 = i16;
                                    }
                                } else if (i27 == 2) {
                                    i19 = parseMapField(t, bArr, i15, i2, i11, offset, registers);
                                    if (i19 != i15) {
                                        messageSchema2 = this;
                                        t6 = t;
                                        bArr2 = bArr;
                                        i17 = i2;
                                        i18 = i3;
                                        registers2 = registers;
                                        i23 = i6;
                                        i21 = i16;
                                        i20 = i11;
                                        i22 = i9;
                                        i24 = i10;
                                        unsafe2 = unsafe;
                                    } else {
                                        i4 = i3;
                                        i7 = i19;
                                        i8 = i16;
                                    }
                                }
                            }
                        } else if (i27 == 2) {
                            Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe2.getObject(t9, offset);
                            if (!protobufList.isModifiable()) {
                                int size = protobufList.size();
                                protobufList = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
                                unsafe2.putObject(t9, offset, protobufList);
                            }
                            i10 = i24;
                            i19 = ArrayDecoders.decodeMessageList(messageSchema2.getMessageFieldSchema(i28), i30, bArr,
                                    i25, i2, protobufList, registers);
                            t6 = t;
                            i17 = i2;
                            i21 = i30;
                            i23 = i6;
                            i20 = i28;
                            i22 = i22;
                            i24 = i10;
                            i18 = i3;
                        } else {
                            i11 = i28;
                            i9 = i22;
                            i10 = i24;
                            i15 = i25;
                            unsafe = unsafe2;
                            i16 = i30;
                        }
                        i4 = i3;
                        i7 = i15;
                        i8 = i16;
                    }
                }
                if (i8 != i4 || i4 == 0) {
                    if (this.hasExtensions && registers.extensionRegistry != ExtensionRegistryLite.getEmptyRegistry()) {
                        i19 = ArrayDecoders.decodeExtensionOrUnknownField(i8, bArr, i7, i2, t, this.defaultInstance,
                                this.unknownFieldSchema, registers);
                    } else {
                        i19 = ArrayDecoders.decodeUnknownField(i8, bArr, i7, i2, getMutableUnknownFields(t), registers);
                    }
                    t6 = t;
                    bArr2 = bArr;
                    i17 = i2;
                    i21 = i8;
                    messageSchema2 = this;
                    registers2 = registers;
                    i23 = i6;
                    i20 = i11;
                    i22 = i9;
                    i24 = i10;
                    unsafe2 = unsafe;
                    i18 = i4;
                } else {
                    i5 = 1048575;
                    messageSchema = this;
                    i19 = i7;
                    i21 = i8;
                    i22 = i9;
                    i24 = i10;
                }
            } else {
                unsafe = unsafe2;
                i4 = i18;
                messageSchema = messageSchema2;
                i5 = 1048575;
            }
        }
        if (i24 != i5) {
            t2 = t;
            unsafe.putInt(t2, i24, i22);
        } else {
            t2 = t;
        }
        UnknownFieldSetLite unknownFieldSetLite = null;
        for (int i38 = messageSchema.checkInitializedCount; i38 < messageSchema.repeatedFieldOffsetStart; i38++) {
            unknownFieldSetLite = (UnknownFieldSetLite) messageSchema.filterMapUnknownEnumValues(t2,
                    messageSchema.intArray[i38], unknownFieldSetLite, messageSchema.unknownFieldSchema);
        }
        if (unknownFieldSetLite != null) {
            ((UnknownFieldSchema) messageSchema.unknownFieldSchema).setBuilderToMessage(t2, (UB) unknownFieldSetLite);
        }
        if (i4 == 0) {
            if (i19 != i2) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (i19 > i2 || i21 != i4) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i19;
    }

    private int parseProto3Message(
        T message, byte[] data, int position, int limit, Registers registers) throws IOException {
      final sun.misc.Unsafe unsafe = UNSAFE;
      int tag = 0;
      int oldNumber = -1;
      int pos = 0;
      while (position < limit) {
        tag = data[position++];
        if (tag < 0) {
          position = decodeVarint32(tag, data, position, registers);
          tag = registers.int1;
        }
        final int number = tag >>> 3;
        final int wireType = tag & 0x7;
        if (number > oldNumber) {
          pos = positionForFieldNumber(number, pos / INTS_PER_FIELD);
        } else {
          pos = positionForFieldNumber(number);
        }
        oldNumber = number;
        if (pos == -1) {
          // need to reset
          pos = 0;
        } else {
          final int typeAndOffset = buffer[pos + 1];
          final int fieldType = type(typeAndOffset);
          final long fieldOffset = offset(typeAndOffset);
          if (fieldType <= 17) {
            switch (fieldType) {
              case 0: // DOUBLE:
                if (wireType == WireFormat.WIRETYPE_FIXED64) {
                  UnsafeUtil.putDouble(message, fieldOffset, decodeDouble(data, position));
                  position += 8;
                  continue;
                }
                break;
              case 1: // FLOAT:
                if (wireType == WireFormat.WIRETYPE_FIXED32) {
                  UnsafeUtil.putFloat(message, fieldOffset, decodeFloat(data, position));
                  position += 4;
                  continue;
                }
                break;
              case 2: // INT64:
              case 3: // UINT64:
                if (wireType == WireFormat.WIRETYPE_VARINT) {
                  position = decodeVarint64(data, position, registers);
                  unsafe.putLong(message, fieldOffset, registers.long1);
                  continue;
                }
                break;
              case 4: // INT32:
              case 11: // UINT32:
                if (wireType == WireFormat.WIRETYPE_VARINT) {
                  position = decodeVarint32(data, position, registers);
                  unsafe.putInt(message, fieldOffset, registers.int1);
                  continue;
                }
                break;
              case 5: // FIXED64:
              case 14: // SFIXED64:
                if (wireType == WireFormat.WIRETYPE_FIXED64) {
                  unsafe.putLong(message, fieldOffset, decodeFixed64(data, position));
                  position += 8;
                  continue;
                }
                break;
              case 6: // FIXED32:
              case 13: // SFIXED32:
                if (wireType == WireFormat.WIRETYPE_FIXED32) {
                  unsafe.putInt(message, fieldOffset, decodeFixed32(data, position));
                  position += 4;
                  continue;
                }
                break;
              case 7: // BOOL:
                if (wireType == WireFormat.WIRETYPE_VARINT) {
                  position = decodeVarint64(data, position, registers);
                  UnsafeUtil.putBoolean(message, fieldOffset, registers.long1 != 0);
                  continue;
                }
                break;
              case 8: // STRING:
                if (wireType == WireFormat.WIRETYPE_LENGTH_DELIMITED) {
                  if ((typeAndOffset & ENFORCE_UTF8_MASK) == 0) {
                    position = decodeString(data, position, registers);
                  } else {
                    position = decodeStringRequireUtf8(data, position, registers);
                  }
                  unsafe.putObject(message, fieldOffset, registers.object1);
                  continue;
                }
                break;
              case 9: // MESSAGE:
                if (wireType == WireFormat.WIRETYPE_LENGTH_DELIMITED) {
                  position =
                      decodeMessageField(
                          getMessageFieldSchema(pos), data, position, limit, registers);
                  final Object oldValue = unsafe.getObject(message, fieldOffset);
                  if (oldValue == null) {
                    unsafe.putObject(message, fieldOffset, registers.object1);
                  } else {
                    unsafe.putObject(
                        message, fieldOffset, Internal.mergeMessage(oldValue, registers.object1));
                  }
                  continue;
                }
                break;
              case 10: // BYTES:
                if (wireType == WireFormat.WIRETYPE_LENGTH_DELIMITED) {
                  position = decodeBytes(data, position, registers);
                  unsafe.putObject(message, fieldOffset, registers.object1);
                  continue;
                }
                break;
              case 12: // ENUM:
                if (wireType == WireFormat.WIRETYPE_VARINT) {
                  position = decodeVarint32(data, position, registers);
                  unsafe.putInt(message, fieldOffset, registers.int1);
                  continue;
                }
                break;
              case 15: // SINT32:
                if (wireType == WireFormat.WIRETYPE_VARINT) {
                  position = decodeVarint32(data, position, registers);
                  unsafe.putInt(
                      message, fieldOffset, CodedInputStream.decodeZigZag32(registers.int1));
                  continue;
                }
                break;
              case 16: // SINT64:
                if (wireType == WireFormat.WIRETYPE_VARINT) {
                  position = decodeVarint64(data, position, registers);
                  unsafe.putLong(
                      message, fieldOffset, CodedInputStream.decodeZigZag64(registers.long1));
                  continue;
                }
                break;
              default:
                break;
            }
          } else if (fieldType == 27) {
            // Handle repeated message field.
            if (wireType == WireFormat.WIRETYPE_LENGTH_DELIMITED) {
              ProtobufList<?> list = (ProtobufList<?>) unsafe.getObject(message, fieldOffset);
              if (!list.isModifiable()) {
                final int size = list.size();
                list =
                    list.mutableCopyWithCapacity(
                        size == 0 ? AbstractProtobufList.DEFAULT_CAPACITY : size * 2);
                unsafe.putObject(message, fieldOffset, list);
              }
              position =
                  decodeMessageList(
                      getMessageFieldSchema(pos), tag, data, position, limit, list, registers);
              continue;
            }
          } else if (fieldType <= 49) {
            // Handle all other repeated fields.
            final int oldPosition = position;
            position =
                parseRepeatedField(
                    message,
                    data,
                    position,
                    limit,
                    tag,
                    number,
                    wireType,
                    pos,
                    typeAndOffset,
                    fieldType,
                    fieldOffset,
                    registers);
            if (position != oldPosition) {
              continue;
            }
          } else if (fieldType == 50) {
            if (wireType == WireFormat.WIRETYPE_LENGTH_DELIMITED) {
              final int oldPosition = position;
              position = parseMapField(message, data, position, limit, pos, fieldOffset, registers);
              if (position != oldPosition) {
                continue;
              }
            }
          } else {
            final int oldPosition = position;
            position =
                parseOneofField(
                    message,
                    data,
                    position,
                    limit,
                    tag,
                    number,
                    wireType,
                    typeAndOffset,
                    fieldType,
                    fieldOffset,
                    pos,
                    registers);
            if (position != oldPosition) {
              continue;
            }
          }
        }
        position = decodeUnknownField(
            tag, data, position, limit, getMutableUnknownFields(message), registers);
      }
      if (position != limit) {
        throw InvalidProtocolBufferException.parseFailure();
      }
      return position;
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
            long offset = offset(typeAndOffsetAt(this.intArray[i2]));
            Object object = UnsafeUtil.getObject(t, offset);
            if (object != null) {
                UnsafeUtil.putObject(t, offset, this.mapFieldSchema.toImmutable(object));
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
        long offset = offset(typeAndOffsetAt(i));
        Object object = UnsafeUtil.getObject(obj, offset);
        if (object == null) {
            object = this.mapFieldSchema.newMapField(obj2);
            UnsafeUtil.putObject(obj, offset, object);
        } else if (this.mapFieldSchema.isImmutable(object)) {
            Object newMapField = this.mapFieldSchema.newMapField(obj2);
            this.mapFieldSchema.mergeFrom(newMapField, object);
            UnsafeUtil.putObject(obj, offset, newMapField);
            object = newMapField;
        }
        ((Reader) reader).readMap(this.mapFieldSchema.forMutableMapData(object),
                (MapEntryLite.Metadata) this.mapFieldSchema.forMapMetadata(obj2), extensionRegistryLite);
    }

    private final <UT, UB> UB filterMapUnknownEnumValues(Object obj, int i, UB ub,
            UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        Internal.EnumVerifier enumFieldVerifier;
        int numberAt = numberAt(i);
        Object object = UnsafeUtil.getObject(obj, offset(typeAndOffsetAt(i)));
        return (object == null || (enumFieldVerifier = getEnumFieldVerifier(i)) == null) ? ub
                : (UB) filterUnknownEnumMap(i, numberAt, this.mapFieldSchema.forMutableMapData(object),
                        enumFieldVerifier, ub, unknownFieldSchema);
    }

    private final <K, V, UT, UB> UB filterUnknownEnumMap(int i, int i2, Map<K, V> map,
            Internal.EnumVerifier enumVerifier, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        MapEntryLite.Metadata<?, ?> forMapMetadata = this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = unknownFieldSchema.newBuilder();
                }
                ByteString.CodedBuilder newCodedBuilder = ByteString.newCodedBuilder(MapEntryLite
                        .computeSerializedSize((MapEntryLite.Metadata) forMapMetadata, next.getKey(), next.getValue()));
                try {
                    MapEntryLite.writeTo(newCodedBuilder.getCodedOutput(), (MapEntryLite.Metadata) forMapMetadata,
                            next.getKey(), next.getValue());
                    unknownFieldSchema.addLengthDelimited(ub, i2, newCodedBuilder.build());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    @Override // com.google.oplus.protobuf.Schema
    public final boolean isInitialized(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.checkInitializedCount) {
            int i6 = this.intArray[i5];
            int numberAt = numberAt(i6);
            int typeAndOffsetAt = typeAndOffsetAt(i6);
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
            if (isRequired(typeAndOffsetAt) && !isFieldPresent(t, i6, i, i2, i9)) {
                return false;
            }
            int type = type(typeAndOffsetAt);
            if (type == 9 || type == 17) {
                if (isFieldPresent(t, i6, i, i2, i9) && !isInitialized(t, typeAndOffsetAt, getMessageFieldSchema(i6))) {
                    return false;
                }
            } else {
                if (type != 27) {
                    if (type == 60 || type == 68) {
                        if (isOneofPresent(t, numberAt, i6)
                                && !isInitialized(t, typeAndOffsetAt, getMessageFieldSchema(i6))) {
                            return false;
                        }
                    } else if (type != 49) {
                        if (type == 50 && !isMapInitialized(t, typeAndOffsetAt, i6)) {
                            return false;
                        }
                    }
                }
                if (!isListInitialized(t, typeAndOffsetAt, i6)) {
                    return false;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(t).isInitialized();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isInitialized(Object obj, int i, Schema schema) {
        return schema.isInitialized(UnsafeUtil.getObject(obj, offset(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean isListInitialized(Object obj, int i, int i2) {
        List list = (List) UnsafeUtil.getObject(obj, offset(i));
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /*
     * JADX WARN: Type inference failed for: r3v7, types:
     * [com.google.oplus.protobuf.Schema]
     */
    private boolean isMapInitialized(T t, int i, int i2) {
        Map<?, ?> forMapData = this.mapFieldSchema.forMapData(UnsafeUtil.getObject(t, offset(i)));
        if (forMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2)).valueType
                .getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        Schema<T> schema = null;
        for (Object obj : forMapData.values()) {
            if (schema == null) {
                schema = Protobuf.getInstance().schemaFor((Class) obj.getClass());
            }
            boolean isInitialized = schema.isInitialized(obj);
            schema = schema;
            if (!isInitialized) {
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
        int presenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
        long j = 1048575 & presenceMaskAndOffsetAt;
        if (j != 1048575) {
            return ((1 << (presenceMaskAndOffsetAt >>> 20)) & UnsafeUtil.getInt(t, j)) != 0;
        }
        int typeAndOffsetAt = typeAndOffsetAt(i);
        long offset = offset(typeAndOffsetAt);
        switch (type(typeAndOffsetAt)) {
            case 0:
                return Double.doubleToRawLongBits(UnsafeUtil.getDouble(t, offset)) != 0;
            case 1:
                return Float.floatToRawIntBits(UnsafeUtil.getFloat(t, offset)) != 0;
            case 2:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 3:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 4:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 5:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 6:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 7:
                return UnsafeUtil.getBoolean(t, offset);
            case 8:
                Object object = UnsafeUtil.getObject(t, offset);
                if (object instanceof String) {
                    return !((String) object).isEmpty();
                }
                if (object instanceof ByteString) {
                    return !ByteString.EMPTY.equals(object);
                }
                throw new IllegalArgumentException();
            case 9:
                return UnsafeUtil.getObject(t, offset) != null;
            case 10:
                return !ByteString.EMPTY.equals(UnsafeUtil.getObject(t, offset));
            case 11:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 12:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 13:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 14:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 15:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 16:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 17:
                return UnsafeUtil.getObject(t, offset) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private void setFieldPresent(T t, int i) {
        int presenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
        long j = 1048575 & presenceMaskAndOffsetAt;
        if (j == 1048575) {
            return;
        }
        UnsafeUtil.putInt(t, j, (1 << (presenceMaskAndOffsetAt >>> 20)) | UnsafeUtil.getInt(t, j));
    }

    private boolean isOneofPresent(T t, int i, int i2) {
        return UnsafeUtil.getInt(t, (long) (presenceMaskAndOffsetAt(i2) & 1048575)) == i;
    }

    private boolean isOneofCaseEqual(T t, T t2, int i) {
        long presenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i) & 1048575;
        return UnsafeUtil.getInt(t, presenceMaskAndOffsetAt) == UnsafeUtil.getInt(t2, presenceMaskAndOffsetAt);
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
            int numberAt = numberAt(i4);
            if (i == numberAt) {
                return i4;
            }
            if (i < numberAt) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSchemaSize() {
        return this.buffer.length * 3;
    }
}
