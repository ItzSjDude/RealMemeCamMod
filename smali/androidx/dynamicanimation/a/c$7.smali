.class Landroidx/dynamicanimation/a/c$7;
.super Landroidx/dynamicanimation/a/d;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/dynamicanimation/a/c;-><init>(Landroidx/dynamicanimation/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/dynamicanimation/a/e;

.field final synthetic b:Landroidx/dynamicanimation/a/c;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/a/c;Ljava/lang/String;Landroidx/dynamicanimation/a/e;)V
    .locals 0

    .line 341
    iput-object p1, p0, Landroidx/dynamicanimation/a/c$7;->b:Landroidx/dynamicanimation/a/c;

    iput-object p3, p0, Landroidx/dynamicanimation/a/c$7;->a:Landroidx/dynamicanimation/a/e;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/a/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)F
    .locals 0

    .line 344
    iget-object p0, p0, Landroidx/dynamicanimation/a/c$7;->a:Landroidx/dynamicanimation/a/e;

    invoke-virtual {p0}, Landroidx/dynamicanimation/a/e;->a()F

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/Object;F)V
    .locals 0

    .line 349
    iget-object p0, p0, Landroidx/dynamicanimation/a/c$7;->a:Landroidx/dynamicanimation/a/e;

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/a/e;->a(F)V

    return-void
.end method
