.class public Lcom/oplus/anim/e/j;
.super Ljava/lang/Object;
.source "FloatParser.java"

# interfaces
.implements Lcom/oplus/anim/e/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/e/aj<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/oplus/anim/e/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/oplus/anim/e/j;

    invoke-direct {v0}, Lcom/oplus/anim/e/j;-><init>()V

    sput-object v0, Lcom/oplus/anim/e/j;->a:Lcom/oplus/anim/e/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1}, Lcom/oplus/anim/e/q;->b(Landroid/util/JsonReader;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/e/j;->a(Landroid/util/JsonReader;F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
