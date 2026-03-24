package com.android.internal.util;

import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.android.internal.R;
import com.android.internal.widget.MessagingMessage;
import java.util.Locale;
import java.util.Objects;
import libcore.content.type.MimeMap;

/* loaded from: classes4.dex */
public class MimeIconUtils {
    private static final ArrayMap<String, ContentResolver.MimeTypeInfo> sCache = new ArrayMap<>();

    private static ContentResolver.MimeTypeInfo buildTypeInfo(String mimeType, int iconId, int labelId, int extLabelId) throws Resources.NotFoundException {
        CharSequence label;
        Resources res = Resources.getSystem();
        String ext = MimeMap.getDefault().guessExtensionFromMimeType(mimeType);
        if (!TextUtils.isEmpty(ext) && extLabelId != -1) {
            label = res.getString(extLabelId, ext.toUpperCase(Locale.US));
        } else {
            label = res.getString(labelId);
        }
        return new ContentResolver.MimeTypeInfo(Icon.createWithResource(res, iconId), label, label);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:341:0x054e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.content.ContentResolver.MimeTypeInfo buildTypeInfo(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 2230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.util.MimeIconUtils.buildTypeInfo(java.lang.String):android.content.ContentResolver$MimeTypeInfo");
    }

    private static ContentResolver.MimeTypeInfo buildGenericTypeInfo(String mimeType) {
        if (mimeType.startsWith("audio/")) {
            return buildTypeInfo(mimeType, R.drawable.ic_doc_audio, R.string.mime_type_audio, R.string.mime_type_audio_ext);
        }
        if (mimeType.startsWith("video/")) {
            return buildTypeInfo(mimeType, R.drawable.ic_doc_video, R.string.mime_type_video, R.string.mime_type_video_ext);
        }
        if (mimeType.startsWith(MessagingMessage.IMAGE_MIME_TYPE_PREFIX)) {
            return buildTypeInfo(mimeType, R.drawable.ic_doc_image, R.string.mime_type_image, R.string.mime_type_image_ext);
        }
        if (mimeType.startsWith("text/")) {
            return buildTypeInfo(mimeType, R.drawable.ic_doc_text, R.string.mime_type_document, R.string.mime_type_document_ext);
        }
        MimeMap mimeMap = MimeMap.getDefault();
        String bouncedMimeType = mimeMap.guessMimeTypeFromExtension(mimeMap.guessExtensionFromMimeType(mimeType));
        if (bouncedMimeType != null && !Objects.equals(mimeType, bouncedMimeType)) {
            return buildTypeInfo(bouncedMimeType);
        }
        return buildTypeInfo(mimeType, R.drawable.ic_doc_generic, R.string.mime_type_generic, R.string.mime_type_generic_ext);
    }

    public static ContentResolver.MimeTypeInfo getTypeInfo(String mimeType) {
        ContentResolver.MimeTypeInfo res;
        String mimeType2 = mimeType.toLowerCase(Locale.US);
        ArrayMap<String, ContentResolver.MimeTypeInfo> arrayMap = sCache;
        synchronized (arrayMap) {
            res = arrayMap.get(mimeType2);
            if (res == null) {
                res = buildTypeInfo(mimeType2);
                arrayMap.put(mimeType2, res);
            }
        }
        return res;
    }
}
