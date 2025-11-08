.class public abstract Lcom/oplus/camera/i/a;
.super Ljava/lang/Object;
.source "FeatureBase.java"

# interfaces
.implements Lcom/oplus/camera/i/e;


# instance fields
.field public a:Lcom/oplus/camera/capmode/a;

.field public b:Lcom/oplus/camera/ui/CameraUIInterface;

.field public c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/oplus/camera/i/a;->a:Lcom/oplus/camera/capmode/a;

    .line 10
    iput-object v0, p0, Lcom/oplus/camera/i/a;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 11
    iput-object v0, p0, Lcom/oplus/camera/i/a;->c:Landroid/content/SharedPreferences;

    .line 14
    iput-object p1, p0, Lcom/oplus/camera/i/a;->a:Lcom/oplus/camera/capmode/a;

    .line 15
    iput-object p2, p0, Lcom/oplus/camera/i/a;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 16
    iget-object p1, p0, Lcom/oplus/camera/i/a;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/i/a;->c:Landroid/content/SharedPreferences;

    return-void
.end method
