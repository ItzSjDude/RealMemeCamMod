.class public interface abstract Lcom/oplus/tblplayer/retriever/IMediaMetadataRetriever;
.super Ljava/lang/Object;
.source "IMediaMetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/retriever/IMediaMetadataRetriever$Option;
    }
.end annotation


# static fields
.field public static final METADATA_KEY_ALBUM:I = 0x1

.field public static final METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final METADATA_KEY_ARTIST:I = 0x2

.field public static final METADATA_KEY_AUTHOR:I = 0x3

.field public static final METADATA_KEY_BITRATE:I = 0x14

.field public static final METADATA_KEY_BITS_PER_SAMPLE:I = 0x27

.field public static final METADATA_KEY_CAPTURE_FRAMERATE:I = 0x19

.field public static final METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final METADATA_KEY_COLOR_RANGE:I = 0x25

.field public static final METADATA_KEY_COLOR_STANDARD:I = 0x23

.field public static final METADATA_KEY_COLOR_TRANSFER:I = 0x24

.field public static final METADATA_KEY_COMPILATION:I = 0xf

.field public static final METADATA_KEY_COMPOSER:I = 0x4

.field public static final METADATA_KEY_DATE:I = 0x5

.field public static final METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final METADATA_KEY_DURATION:I = 0x9

.field public static final METADATA_KEY_EXIF_LENGTH:I = 0x22

.field public static final METADATA_KEY_EXIF_OFFSET:I = 0x21

.field public static final METADATA_KEY_GENRE:I = 0x6

.field public static final METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final METADATA_KEY_HAS_IMAGE:I = 0x1a

.field public static final METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final METADATA_KEY_IMAGE_COUNT:I = 0x1b

.field public static final METADATA_KEY_IMAGE_HEIGHT:I = 0x1e

.field public static final METADATA_KEY_IMAGE_PRIMARY:I = 0x1c

.field public static final METADATA_KEY_IMAGE_ROTATION:I = 0x1f

.field public static final METADATA_KEY_IMAGE_WIDTH:I = 0x1d

.field public static final METADATA_KEY_IS_DRM:I = 0x16

.field public static final METADATA_KEY_LOCATION:I = 0x17

.field public static final METADATA_KEY_MAX_LENGTH:I = 0x28

.field public static final METADATA_KEY_MIMETYPE:I = 0xc

.field public static final METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final METADATA_KEY_SAMPLERATE:I = 0x26

.field public static final METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final METADATA_KEY_TITLE:I = 0x7

.field public static final METADATA_KEY_VIDEO_FRAME_COUNT:I = 0x20

.field public static final METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final METADATA_KEY_VIDEO_ROTATION:I = 0x18

.field public static final METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final METADATA_KEY_WRITER:I = 0xb

.field public static final METADATA_KEY_YEAR:I = 0x8

.field public static final OPTION_CLOSEST:I = 0x3

.field public static final OPTION_CLOSEST_SYNC:I = 0x2

.field public static final OPTION_NEXT_SYNC:I = 0x1

.field public static final OPTION_PREVIOUS_SYNC:I


# virtual methods
.method public abstract extractMetadata(I)Ljava/lang/String;
.end method

.method public abstract getCoverPicture(III)Landroid/graphics/Bitmap;
.end method

.method public abstract getEmbeddedPicture()[B
.end method

.method public abstract getFrameAtTime(J)Landroid/graphics/Bitmap;
.end method

.method public abstract getFrameAtTime(JI)Landroid/graphics/Bitmap;
.end method

.method public abstract getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
.end method

.method public abstract release()V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;)V
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
.end method
