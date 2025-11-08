.class public final Lc/c/e$b;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lc/c/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/g$c<",
        "Lc/c/e;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lc/c/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lc/c/e$b;

    invoke-direct {v0}, Lc/c/e$b;-><init>()V

    sput-object v0, Lc/c/e$b;->a:Lc/c/e$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
