.class Lcom/oplus/camera/t/c$1;
.super Ljava/lang/Object;
.source "StreetFixFocusHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/t/c;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/t/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/t/c;Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/oplus/camera/t/c$1;->b:Lcom/oplus/camera/t/c;

    iput-object p2, p0, Lcom/oplus/camera/t/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/t/c$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    iget-object p0, p0, Lcom/oplus/camera/t/c$1;->b:Lcom/oplus/camera/t/c;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
