.class Lcom/oplus/camera/f/a$3;
.super Ljava/lang/Object;
.source "DiagnosisTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/f/a;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/oplus/camera/f/a$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/camera/f/a$3;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/f/a$3;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/camera/f/a$3;->b:Ljava/util/Map;

    invoke-static {v0, p0}, Landroid/os/OplusManager;->onStamp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
