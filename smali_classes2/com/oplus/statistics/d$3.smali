.class final Lcom/oplus/statistics/d$3;
.super Ljava/lang/Object;
.source "OplusTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/statistics/d;->onKVEventEnd(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/oplus/statistics/d$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/statistics/d$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/oplus/statistics/d$3;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/statistics/d$3;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/oplus/statistics/a/g;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
