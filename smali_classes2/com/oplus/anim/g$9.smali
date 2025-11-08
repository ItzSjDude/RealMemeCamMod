.class final Lcom/oplus/anim/g$9;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/g;->a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/oplus/anim/e<",
        "Lcom/oplus/anim/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/util/JsonReader;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/oplus/anim/g$9;->a:Landroid/util/JsonReader;

    iput-object p2, p0, Lcom/oplus/anim/g$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/anim/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/e<",
            "Lcom/oplus/anim/a;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/oplus/anim/g$9;->a:Landroid/util/JsonReader;

    iget-object p0, p0, Lcom/oplus/anim/g$9;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/anim/g;->b(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/e;

    move-result-object p0

    return-object p0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/oplus/anim/g$9;->a()Lcom/oplus/anim/e;

    move-result-object p0

    return-object p0
.end method
