.class Lb/b/i$1;
.super Lb/b/e;
.source "TestSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/i;->a(Ljava/lang/String;)Lb/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p2, p0, Lb/b/i$1;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lb/b/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 0

    .line 97
    iget-object p0, p0, Lb/b/i$1;->a:Ljava/lang/String;

    invoke-static {p0}, Lb/b/i$1;->b(Ljava/lang/String;)V

    return-void
.end method
