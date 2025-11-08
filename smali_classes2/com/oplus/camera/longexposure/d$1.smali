.class Lcom/oplus/camera/longexposure/d$1;
.super Ljava/lang/Object;
.source "LongExposureIcon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/longexposure/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/longexposure/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/longexposure/d;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oplus/camera/longexposure/d$1;->a:Lcom/oplus/camera/longexposure/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/longexposure/d$1;->a:Lcom/oplus/camera/longexposure/d;

    invoke-static {p0}, Lcom/oplus/camera/longexposure/d;->a(Lcom/oplus/camera/longexposure/d;)Lcom/oplus/camera/longexposure/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/longexposure/f;->a()V

    return-void
.end method
