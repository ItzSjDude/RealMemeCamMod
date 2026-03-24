package com.youtu.ocr.docprocess;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.YuvImage;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.media.MediaScannerConnection;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
/* loaded from: classes.dex */
public class BitmapUtils {
    public static final int Config_1080P = 3;
    public static final int Config_2K = 4;
    public static final int Config_480P = 1;
    public static final int Config_720P = 2;

    private static int getSize(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return i != 4 ? 0 : 1440;
                }
                return 1080;
            }
            return 720;
        }
        return 480;
    }

    private BitmapUtils() {
    }

    public static Bitmap getRightSzieBitmap(Bitmap bitmap, int i) {
        int size = getSize(i);
        int width = bitmap.getWidth();
        float f = width > size ? size / width : 1.0f;
        Bitmap createBitmap = Bitmap.createBitmap((int) (bitmap.getWidth() * f), (int) (bitmap.getHeight() * f), Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap).drawBitmap(bitmap, (Rect) null, new Rect(0, 0, (int) (bitmap.getWidth() * f), (int) (bitmap.getHeight() * f)), (Paint) null);
        return createBitmap;
    }

    public static Bitmap getRightSzieBitmap(String str, int i) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        if (getSize(i) * 2 < options.outWidth) {
            options.inSampleSize = 2;
        }
        return getRightSzieBitmap(BitmapFactory.decodeFile(str, options), i);
    }

    public static Bitmap rotateToDegrees(Bitmap bitmap, float f) {
        Matrix matrix = new Matrix();
        matrix.reset();
        matrix.setRotate(f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static Bitmap toGrayscale(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    public static Bitmap toGrayscale(Bitmap bitmap, int i) {
        return toRoundCorner(toGrayscale(bitmap), i);
    }

    public static Bitmap toRoundCorner(Bitmap bitmap, int i) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        float f = i;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    public static BitmapDrawable toRoundCorner(BitmapDrawable bitmapDrawable, int i) {
        return new BitmapDrawable(toRoundCorner(bitmapDrawable.getBitmap(), i));
    }

    public static Bitmap saveBefore(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        int i = options.outHeight;
        options.inSampleSize = 2;
        Bitmap decodeFile = BitmapFactory.decodeFile(str, options);
        int width = decodeFile.getWidth();
        int height = decodeFile.getHeight();
        PrintStream printStream = System.out;
        printStream.println(width + "   " + height);
        saveJPGE_After(decodeFile, str, 90);
        return decodeFile;
    }

    public static Bitmap createBitmapBySize(Bitmap bitmap, int i, int i2) {
        return Bitmap.createScaledBitmap(bitmap, i, i2, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a A[Catch: Exception -> 0x0062, TRY_LEAVE, TryCatch #0 {Exception -> 0x0062, blocks: (B:3:0x0001, B:7:0x003f, B:15:0x004e, B:17:0x005a, B:10:0x0046), top: B:23:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap getImageFromPath(java.lang.String r8, float r9, float r10) {
        /*
            r0 = 0
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Exception -> L62
            r1.<init>()     // Catch: java.lang.Exception -> L62
            r2 = 1
            r1.inJustDecodeBounds = r2     // Catch: java.lang.Exception -> L62
            android.graphics.BitmapFactory.decodeFile(r8, r1)     // Catch: java.lang.Exception -> L62
            r3 = 0
            r1.inJustDecodeBounds = r3     // Catch: java.lang.Exception -> L62
            int r3 = r1.outWidth     // Catch: java.lang.Exception -> L62
            int r4 = r1.outHeight     // Catch: java.lang.Exception -> L62
            java.lang.String r5 = "getImageFromPath"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L62
            r6.<init>()     // Catch: java.lang.Exception -> L62
            java.lang.String r7 = "bSize:newOpts.out.w="
            r6.append(r7)     // Catch: java.lang.Exception -> L62
            r6.append(r3)     // Catch: java.lang.Exception -> L62
            java.lang.String r7 = " h="
            r6.append(r7)     // Catch: java.lang.Exception -> L62
            r6.append(r4)     // Catch: java.lang.Exception -> L62
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Exception -> L62
            android.util.Log.d(r5, r6)     // Catch: java.lang.Exception -> L62
            float r5 = r10 / r9
            float r4 = (float) r4     // Catch: java.lang.Exception -> L62
            float r3 = (float) r3     // Catch: java.lang.Exception -> L62
            float r6 = r4 / r3
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 <= 0) goto L42
            int r10 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r10 <= 0) goto L49
            float r3 = r3 / r9
            int r9 = (int) r3     // Catch: java.lang.Exception -> L62
            goto L4a
        L42:
            int r9 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r9 <= 0) goto L49
            float r4 = r4 / r10
            int r9 = (int) r4     // Catch: java.lang.Exception -> L62
            goto L4a
        L49:
            r9 = r2
        L4a:
            if (r9 > r2) goto L4d
            goto L4e
        L4d:
            r2 = r9
        L4e:
            r1.inSampleSize = r2     // Catch: java.lang.Exception -> L62
            android.graphics.Bitmap r9 = android.graphics.BitmapFactory.decodeFile(r8, r1)     // Catch: java.lang.Exception -> L62
            int r8 = readPictureDegree(r8)     // Catch: java.lang.Exception -> L62
            if (r8 == 0) goto L5e
            android.graphics.Bitmap r9 = rotaingImageView(r8, r9)     // Catch: java.lang.Exception -> L62
        L5e:
            if (r9 != 0) goto L61
            goto L62
        L61:
            r0 = r9
        L62:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.youtu.ocr.docprocess.BitmapUtils.getImageFromPath(java.lang.String, float, float):android.graphics.Bitmap");
    }

    public static Bitmap decodeBitmapFromResource(Resources resources, int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        return BitmapFactory.decodeResource(resources, i, calculateInSampleSize(options, i2, i3));
    }

    public static BitmapFactory.Options calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int round;
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 > i2 || i4 > i) {
            int round2 = Math.round(i3 / i2);
            round = Math.round(i4 / i);
            if (round2 < round) {
                round = round2;
            }
        } else {
            round = 1;
        }
        options.inSampleSize = round;
        options.inJustDecodeBounds = false;
        return options;
    }

    public static Bitmap getAlphaBitmap(Bitmap bitmap, int i) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setColor(i);
        canvas.drawBitmap(bitmap.extractAlpha(), 0.0f, 0.0f, paint);
        return createBitmap;
    }

    public static int readPictureDegree(String str) {
        int i;
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
            if (attributeInt == 3) {
                i = 180;
            } else if (attributeInt == 6) {
                i = 90;
            } else if (attributeInt != 8) {
                return 0;
            } else {
                i = 270;
            }
            return i;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static Bitmap YUV2Bitmap(byte[] bArr, int i, int i2) {
        YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        yuvImage.compressToJpeg(new Rect(0, 0, i, i2), 100, byteArrayOutputStream);
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
        try {
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return decodeByteArray;
    }

    public static void savePNG_After(Bitmap bitmap, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
            if (bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream)) {
                fileOutputStream.flush();
                fileOutputStream.close();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean saveJPGE_After(Bitmap bitmap, String str, int i) {
        File file = new File(str);
        makeDir(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            if (bitmap.compress(Bitmap.CompressFormat.JPEG, i, fileOutputStream)) {
                fileOutputStream.flush();
                fileOutputStream.close();
                return true;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void saveJPGE_After(Context context, Bitmap bitmap, String str, int i) {
        File file = new File(str);
        makeDir(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            if (bitmap.compress(Bitmap.CompressFormat.JPEG, i, fileOutputStream)) {
                fileOutputStream.flush();
                fileOutputStream.close();
            }
            updateResources(context, file.getPath());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static void saveJPGE_After_PNG(Context context, Bitmap bitmap, String str, int i) {
        File file = new File(str);
        makeDir(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            if (bitmap.compress(Bitmap.CompressFormat.PNG, i, fileOutputStream)) {
                fileOutputStream.flush();
                fileOutputStream.close();
            }
            updateResources(context, file.getPath());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static void saveJPGE_After_WebP(Context context, Bitmap bitmap, String str, int i) {
        File file = new File(str);
        makeDir(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            if (bitmap.compress(Bitmap.CompressFormat.WEBP, i, fileOutputStream)) {
                fileOutputStream.flush();
                fileOutputStream.close();
            }
            updateResources(context, file.getPath());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private static void makeDir(File file) {
        File file2 = new File(file.getParent());
        if (file2.exists()) {
            return;
        }
        file2.mkdirs();
    }

    public static Drawable bitmapToDrawableByBD(Bitmap bitmap) {
        return new BitmapDrawable(bitmap);
    }

    public static Bitmap rotaingImageView(int i, Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static void updateResources(Context context, String str) {
        MediaScannerConnection.scanFile(context, new String[]{str}, null, null);
    }
}
