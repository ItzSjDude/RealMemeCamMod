.class public final Lcom/oplus/tblplayer/misc/TBLTimedText;
.super Ljava/lang/Object;
.source "TBLTimedText.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/tblplayer/misc/TBLTimedText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/oplus/tblplayer/misc/TBLTimedText$1;

    invoke-direct {v0}, Lcom/oplus/tblplayer/misc/TBLTimedText$1;-><init>()V

    sput-object v0, Lcom/oplus/tblplayer/misc/TBLTimedText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 26
    iput-object v0, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextChars:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 30
    iput-object p2, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextChars:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 26
    iput-object v0, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextChars:Ljava/lang/String;

    .line 34
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextChars:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextChars:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/TBLTimedText;->mTextChars:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
