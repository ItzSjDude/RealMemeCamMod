.class Lcom/oplus/camera/ui/menu/setting/p$5;
.super Ljava/lang/Object;
.source "CameraSubSettingFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/p;)V
    .locals 0

    .line 1544
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p$5;->a:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1548
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p0

    sub-int/2addr p6, p5

    sub-int/2addr p0, p6

    rsub-int/lit8 p0, p0, 0xa

    if-lez p0, :cond_0

    sub-int/2addr p3, p2

    if-lt p0, p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1554
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f10027b

    invoke-static {p3, p4}, Lcom/oplus/camera/util/o;->b(Landroid/content/Context;I)V

    if-lez p0, :cond_2

    .line 1556
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p0, p2

    .line 1562
    invoke-interface {p1, p2, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method
