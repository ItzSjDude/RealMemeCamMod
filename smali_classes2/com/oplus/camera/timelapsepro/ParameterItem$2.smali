.class Lcom/oplus/camera/timelapsepro/ParameterItem$2;
.super Ljava/lang/Object;
.source "ParameterItem.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/ParameterItem;->a(Lcom/oplus/camera/timelapsepro/a/e;Lcom/oplus/camera/timelapsepro/a/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/ParameterItem;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/ParameterItem;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$2;->a:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$2;->a:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->c()V

    return-void
.end method

.method public static synthetic lambda$Yon49sGBhrE7ih-hoRJBGdFHYSQ(Lcom/oplus/camera/timelapsepro/ParameterItem$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem$2;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$2;->a:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->c(Lcom/oplus/camera/timelapsepro/ParameterItem;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$2;->a:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->c(Lcom/oplus/camera/timelapsepro/ParameterItem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$ParameterItem$2$Yon49sGBhrE7ih-hoRJBGdFHYSQ;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$ParameterItem$2$Yon49sGBhrE7ih-hoRJBGdFHYSQ;-><init>(Lcom/oplus/camera/timelapsepro/ParameterItem$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
