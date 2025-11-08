.class public final enum Landroidx/recyclerview/widget/RecyclerView$a$a;
.super Ljava/lang/Enum;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/recyclerview/widget/RecyclerView$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/recyclerview/widget/RecyclerView$a$a;

.field public static final enum ALLOW:Landroidx/recyclerview/widget/RecyclerView$a$a;

.field public static final enum PREVENT:Landroidx/recyclerview/widget/RecyclerView$a$a;

.field public static final enum PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7673
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$a$a;

    const/4 v1, 0x0

    const-string v2, "ALLOW"

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$a$a;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$a$a;

    .line 7678
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$a$a;

    const/4 v2, 0x1

    const-string v3, "PREVENT_WHEN_EMPTY"

    invoke-direct {v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$a$a;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$a$a;

    .line 7684
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$a$a;

    const/4 v3, 0x2

    const-string v4, "PREVENT"

    invoke-direct {v0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$a$a;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$a$a;

    const/4 v0, 0x3

    .line 7668
    new-array v0, v0, [Landroidx/recyclerview/widget/RecyclerView$a$a;

    sget-object v4, Landroidx/recyclerview/widget/RecyclerView$a$a;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$a$a;

    aput-object v4, v0, v1

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$a$a;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$a$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$a$a;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$a$a;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$a$a;->$VALUES:[Landroidx/recyclerview/widget/RecyclerView$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7668
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/recyclerview/widget/RecyclerView$a$a;
    .locals 1

    .line 7668
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$a$a;

    return-object p0
.end method

.method public static values()[Landroidx/recyclerview/widget/RecyclerView$a$a;
    .locals 1

    .line 7668
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$a$a;->$VALUES:[Landroidx/recyclerview/widget/RecyclerView$a$a;

    invoke-virtual {v0}, [Landroidx/recyclerview/widget/RecyclerView$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/recyclerview/widget/RecyclerView$a$a;

    return-object v0
.end method
