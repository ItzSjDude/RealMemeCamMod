.class Lcom/oplus/camera/professional/h$10;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->onBeforePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;Ljava/lang/String;)V
    .locals 0

    .line 2758
    iput-object p1, p0, Lcom/oplus/camera/professional/h$10;->b:Lcom/oplus/camera/professional/h;

    iput-object p2, p0, Lcom/oplus/camera/professional/h$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2761
    iget-object v0, p0, Lcom/oplus/camera/professional/h$10;->b:Lcom/oplus/camera/professional/h;

    iget-object p0, p0, Lcom/oplus/camera/professional/h$10;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;ZLjava/lang/String;)V

    return-void
.end method
