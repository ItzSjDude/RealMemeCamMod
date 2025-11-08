.class public final synthetic Lcom/oplus/statistics/-$$Lambda$d$c61_uz_CobflBlY3CRQAOmYH-14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Lcom/oplus/statistics/b/i;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/oplus/statistics/b/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/-$$Lambda$d$c61_uz_CobflBlY3CRQAOmYH-14;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/statistics/-$$Lambda$d$c61_uz_CobflBlY3CRQAOmYH-14;->f$1:Lcom/oplus/statistics/b/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/statistics/-$$Lambda$d$c61_uz_CobflBlY3CRQAOmYH-14;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/statistics/-$$Lambda$d$c61_uz_CobflBlY3CRQAOmYH-14;->f$1:Lcom/oplus/statistics/b/i;

    invoke-static {v0, p0}, Lcom/oplus/statistics/d;->lambda$onStaticDataUpdate$5(Landroid/content/Context;Lcom/oplus/statistics/b/i;)V

    return-void
.end method
