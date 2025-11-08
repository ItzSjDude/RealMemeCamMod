.class public final Lc/j/f$a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lc/j/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/j/f;->a(Ljava/util/Iterator;)Lc/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/j/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lc/j/f$a;->a:Ljava/util/Iterator;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 681
    iget-object p0, p0, Lc/j/f$a;->a:Ljava/util/Iterator;

    return-object p0
.end method
