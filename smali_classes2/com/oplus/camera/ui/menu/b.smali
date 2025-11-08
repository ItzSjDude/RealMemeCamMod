.class public Lcom/oplus/camera/ui/menu/b;
.super Ljava/lang/Object;
.source "CameraMenuOptionInfo.java"


# static fields
.field public static final GROUP_TYPE_IMAGE_MENU:I = 0x3

.field public static final GROUP_TYPE_MENU_EXPANDABLE:I = 0x2

.field public static final GROUP_TYPE_NOMAL:I = 0x0

.field public static final GROUP_TYPE_SHARE_RESOURCE:I = 0x1

.field public static final GROUP_TYPE_TIME_LAPSE_SPEED:I = 0x4


# instance fields
.field private mCameraUIListener:Lcom/oplus/camera/ui/CameraUIListener;

.field private mDrawerType:I

.field private mGroupType:I

.field private mIconsId:I

.field private mImageTitleColorChangeable:Z

.field private mImageTitleMode:Z

.field private mOffAnimationIcon:Landroid/graphics/Bitmap;

.field private mOnAnimationIcon:Landroid/graphics/Bitmap;

.field private mOptionDefaultValue:Ljava/lang/String;

.field private mOptionExpandIcon:Landroid/graphics/drawable/Drawable;

.field private mOptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/e;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionKey:Ljava/lang/String;

.field private mOptionSingleIcon:Landroid/graphics/Bitmap;

.field private mOptionTitle:Ljava/lang/String;

.field private mbLottieIconNeedAnim:Z

.field private mbOptionOnOff:Z

.field private mbSwitchIconNeedAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionKey:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionTitle:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionDefaultValue:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/b;->mbOptionOnOff:Z

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionExpandIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOffAnimationIcon:Landroid/graphics/Bitmap;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOnAnimationIcon:Landroid/graphics/Bitmap;

    .line 41
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/b;->mbSwitchIconNeedAnim:Z

    .line 42
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/b;->mbLottieIconNeedAnim:Z

    .line 43
    iput v1, p0, Lcom/oplus/camera/ui/menu/b;->mGroupType:I

    .line 44
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/b;->mImageTitleMode:Z

    .line 45
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/b;->mImageTitleColorChangeable:Z

    .line 46
    iput v1, p0, Lcom/oplus/camera/ui/menu/b;->mIconsId:I

    .line 49
    iput v1, p0, Lcom/oplus/camera/ui/menu/b;->mDrawerType:I

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mCameraUIListener:Lcom/oplus/camera/ui/CameraUIListener;

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionKey:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionTitle:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionDefaultValue:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionItems:Ljava/util/ArrayList;

    .line 57
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/b;->mbOptionOnOff:Z

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/oplus/camera/ui/menu/b;->mDrawerType:I

    return-void
.end method

.method private getAIEnhancementVideoDefaultValue()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/b;->mCameraUIListener:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 104
    :goto_0
    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGroupType()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/oplus/camera/ui/menu/b;->mGroupType:I

    return p0
.end method

.method public getIconsId()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/oplus/camera/ui/menu/b;->mIconsId:I

    return p0
.end method

.method public getImageTitleColorChangeable()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/b;->mImageTitleColorChangeable:Z

    return p0
.end method

.method public getImageTitleMode()Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/b;->mImageTitleMode:Z

    return p0
.end method

.method public getLottieIconNeedAnim()Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/b;->mbLottieIconNeedAnim:Z

    return p0
.end method

.method public getOffAnimationIcon()Landroid/graphics/Bitmap;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/b;->mOffAnimationIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getOnAnimationIcon()Landroid/graphics/Bitmap;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/b;->mOnAnimationIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getOptionDefaultValue()Ljava/lang/String;
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/b;->getOptionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_ai_enhancement_video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/b;->getAIEnhancementVideoDefaultValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getOptionExpandIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionExpandIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOptionItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/e;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getOptionKey()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionKey:Ljava/lang/String;

    return-object p0
.end method

.method public getOptionOnOff()Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/b;->mbOptionOnOff:Z

    return p0
.end method

.method public getOptionSingleIcon()Landroid/graphics/Bitmap;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getOptionTitle()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getOptionType()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/oplus/camera/ui/menu/b;->mDrawerType:I

    return p0
.end method

.method public getSwitchIconNeedAnim()Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/b;->mbSwitchIconNeedAnim:Z

    return p0
.end method

.method public release()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/e;

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/e;->g()V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionItems:Ljava/util/ArrayList;

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/b;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    .line 221
    :cond_3
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionDefaultValue:Ljava/lang/String;

    .line 222
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionKey:Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionTitle:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/b;->mCameraUIListener:Lcom/oplus/camera/ui/CameraUIListener;

    return-void
.end method

.method public setCameraUIListener(Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/b;->mCameraUIListener:Lcom/oplus/camera/ui/CameraUIListener;

    return-void
.end method

.method public setCloseAnimationIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/b;->mOffAnimationIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setGroupType(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/oplus/camera/ui/menu/b;->mGroupType:I

    return-void
.end method

.method public setIconsId(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/oplus/camera/ui/menu/b;->mIconsId:I

    return-void
.end method

.method public setImageTitleColorChangeable(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/b;->mImageTitleColorChangeable:Z

    return-void
.end method

.method public setImageTitleMode(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/b;->mImageTitleMode:Z

    return-void
.end method

.method public setLottieIconNeedAnim(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/b;->mbLottieIconNeedAnim:Z

    return-void
.end method

.method public setOpenAnimationIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/b;->mOnAnimationIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOptionDefaultValue(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public setOptionExpandIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionExpandIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOptionItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/e;",
            ">;)V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setOptionKey(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionKey:Ljava/lang/String;

    return-void
.end method

.method public setOptionOnOff(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/b;->mbOptionOnOff:Z

    return-void
.end method

.method public setOptionSingleIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOptionTitle(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/b;->mOptionTitle:Ljava/lang/String;

    return-void
.end method

.method public setOptionType(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/oplus/camera/ui/menu/b;->mDrawerType:I

    return-void
.end method

.method public setSwitchIconNeedAnim(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/b;->mbSwitchIconNeedAnim:Z

    return-void
.end method
