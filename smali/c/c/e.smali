.class public interface abstract Lc/c/e;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lc/c/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/e$a;,
        Lc/c/e$b;
    }
.end annotation


# static fields
.field public static final a:Lc/c/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lc/c/e$b;->a:Lc/c/e$b;

    sput-object v0, Lc/c/e;->a:Lc/c/e$b;

    return-void
.end method


# virtual methods
.method public abstract a(Lc/c/d;)Lc/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/d<",
            "-TT;>;)",
            "Lc/c/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract b(Lc/c/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/d<",
            "*>;)V"
        }
    .end annotation
.end method
