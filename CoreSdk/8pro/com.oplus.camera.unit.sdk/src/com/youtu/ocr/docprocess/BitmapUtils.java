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
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class BitmapUtils {
    public static final int Config_1080P = 3;
    public static final int Config_2K = 4;
    public static final int Config_480P = 1;
    public static final int Config_720P = 2;

    private static int getSize(int i) {
        if (i == 1) {
            return 480;
        }
        if (i == 2) {
            return 720;
        }
        if (i != 3) {
            return i != 4 ? 0 : 1440;
        }
        return 1080;
    }

    private BitmapUtils() {
    }

    public static Bitmap getRightSzieBitmap(Bitmap bitmap, int i) {
        int size = getSize(i);
        int width = bitmap.getWidth();
        float f = width > size ? size / width : 1.0f;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (bitmap.getWidth() * f), (int) (bitmap.getHeight() * f), Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, (Rect) null, new Rect(0, 0, (int) (bitmap.getWidth() * f), (int) (bitmap.getHeight() * f)), (Paint) null);
        return bitmapCreateBitmap;
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
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap toGrayscale(Bitmap bitmap, int i) {
        return toRoundCorner(toGrayscale(bitmap), i);
    }

    public static Bitmap toRoundCorner(Bitmap bitmap, int i) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
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
        return bitmapCreateBitmap;
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
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        int width = bitmapDecodeFile.getWidth();
        int height = bitmapDecodeFile.getHeight();
        System.out.println(width + "   " + height);
        saveJPGE_After(bitmapDecodeFile, str, 90);
        return bitmapDecodeFile;
    }

    public static Bitmap createBitmapBySize(Bitmap bitmap, int i, int i2) {
        return Bitmap.createScaledBitmap(bitmap, i, i2, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap getImageFromPath(String str, float f, float f2) {
        int i;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int i2 = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inJustDecodeBounds = false;
            int i3 = options.outWidth;
            int i4 = options.outHeight;
            Log.d("getImageFromPath", "bSize:newOpts.out.w=" + i3 + " h=" + i4);
            float f3 = (float) i4;
            float f4 = (float) i3;
            if (f2 / f > f3 / f4) {
                i = f4 > f ? (int) (f4 / f) : 1;
            } else if (f3 > f2) {
                i = (int) (f3 / f2);
            }
            if (i > 1) {
                i2 = i;
            }
            options.inSampleSize = i2;
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            int pictureDegree = readPictureDegree(str);
            if (pictureDegree != 0) {
                bitmapDecodeFile = rotaingImageView(pictureDegree, bitmapDecodeFile);
            }
            if (bitmapDecodeFile == null) {
                return null;
            }
            return bitmapDecodeFile;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Bitmap decodeBitmapFromResource(Resources resources, int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        return BitmapFactory.decodeResource(resources, i, calculateInSampleSize(options, i2, i3));
    }

    public static BitmapFactory.Options calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int iRound;
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 > i2 || i4 > i) {
            int iRound2 = Math.round(i3 / i2);
            iRound = Math.round(i4 / i);
            if (iRound2 < iRound) {
                iRound = iRound2;
            }
        } else {
            iRound = 1;
        }
        options.inSampleSize = iRound;
        options.inJustDecodeBounds = false;
        return options;
    }

    public static Bitmap getAlphaBitmap(Bitmap bitmap, int i) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setColor(i);
        canvas.drawBitmap(bitmap.extractAlpha(), 0.0f, 0.0f, paint);
        return bitmapCreateBitmap;
    }

    public static int readPictureDegree(String str) {
        int i;
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
            if (attributeInt == 3) {
                i = 180;
            } else if (attributeInt == 6) {
                i = 90;
            } else {
                if (attributeInt != 8) {
                    return 0;
                }
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
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
        try {
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return bitmapDecodeByteArray;
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
            if (!bitmap.compress(Bitmap.CompressFormat.JPEG, i, fileOutputStream)) {
                return true;
            }
            fileOutputStream.flush();
            fileOutputStream.close();
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
