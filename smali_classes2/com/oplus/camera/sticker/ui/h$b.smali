.class public Lcom/oplus/camera/sticker/ui/h$b;
.super Ljava/lang/Object;
.source "StickerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/sticker/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 1

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1360
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h$b;->a:Landroid/graphics/drawable/Drawable;

    .line 1361
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h$b;->b:Landroid/graphics/drawable/Drawable;

    .line 1362
    iput-object v0, p0, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1363
    iput-boolean v0, p0, Lcom/oplus/camera/sticker/ui/h$b;->d:Z

    .line 1367
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$b;->a:Landroid/graphics/drawable/Drawable;

    .line 1368
    iput-object p2, p0, Lcom/oplus/camera/sticker/ui/h$b;->b:Landroid/graphics/drawable/Drawable;

    .line 1369
    iput-object p3, p0, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    .line 1370
    iput-boolean p4, p0, Lcom/oplus/camera/sticker/ui/h$b;->d:Z

    return-void
.end method
