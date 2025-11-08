.class public Lorg/a/b/c;
.super Ljava/lang/Object;
.source "SelfDescribingValue.java"

# interfaces
.implements Lorg/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/a/h;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/a/b/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/a/d;)V
    .locals 0

    .line 15
    iget-object p0, p0, Lorg/a/b/c;->a:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lorg/a/d;->a(Ljava/lang/Object;)Lorg/a/d;

    return-void
.end method
