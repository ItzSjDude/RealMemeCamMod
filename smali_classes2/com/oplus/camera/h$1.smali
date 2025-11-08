.class Lcom/oplus/camera/h$1;
.super Ljava/lang/Object;
.source "CameraPermission.java"

# interfaces
.implements Lcom/oplus/camera/util/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/h;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/h;[Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/oplus/camera/h$1;->b:Lcom/oplus/camera/h;

    iput-object p2, p0, Lcom/oplus/camera/h$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/oplus/camera/h$1;->b:Lcom/oplus/camera/h;

    invoke-static {p0, p1}, Lcom/oplus/camera/h;->a(Lcom/oplus/camera/h;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/f;

    return-void
.end method

.method public a(Landroidx/appcompat/app/f;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Landroidx/appcompat/app/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p1}, Landroidx/appcompat/app/f;->dismiss()V

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/h$1;->a:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 221
    iget-object p1, p0, Lcom/oplus/camera/h$1;->b:Lcom/oplus/camera/h;

    invoke-static {p1}, Lcom/oplus/camera/h;->a(Lcom/oplus/camera/h;)Landroid/app/Activity;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/h$1;->a:[Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string p2, "android.permission.CAMERA"

    .line 223
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 224
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 225
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 227
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 228
    iget-object p0, p0, Lcom/oplus/camera/h$1;->b:Lcom/oplus/camera/h;

    invoke-static {p0}, Lcom/oplus/camera/h;->b(Lcom/oplus/camera/h;)V

    goto :goto_1

    .line 226
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/h$1;->b:Lcom/oplus/camera/h;

    invoke-static {p0}, Lcom/oplus/camera/h;->a(Lcom/oplus/camera/h;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method
