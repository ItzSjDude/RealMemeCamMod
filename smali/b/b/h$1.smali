.class Lb/b/h$1;
.super Ljava/lang/Object;
.source "TestResult.java"

# interfaces
.implements Lb/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/h;->a(Lb/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/e;

.field final synthetic b:Lb/b/h;


# direct methods
.method constructor <init>(Lb/b/h;Lb/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lb/b/h$1;->b:Lb/b/h;

    iput-object p2, p0, Lb/b/h$1;->a:Lb/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lb/b/h$1;->a:Lb/b/e;

    invoke-virtual {p0}, Lb/b/e;->b()V

    return-void
.end method
