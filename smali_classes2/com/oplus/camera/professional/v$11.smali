.class Lcom/oplus/camera/professional/v$11;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->onBeforePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;Ljava/lang/String;)V
    .locals 0

    .line 2936
    iput-object p1, p0, Lcom/oplus/camera/professional/v$11;->b:Lcom/oplus/camera/professional/v;

    iput-object p2, p0, Lcom/oplus/camera/professional/v$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2939
    iget-object v0, p0, Lcom/oplus/camera/professional/v$11;->b:Lcom/oplus/camera/professional/v;

    iget-object p0, p0, Lcom/oplus/camera/professional/v$11;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;ZLjava/lang/String;)V

    return-void
.end method
