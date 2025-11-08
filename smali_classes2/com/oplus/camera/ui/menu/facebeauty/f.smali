.class Lcom/oplus/camera/ui/menu/facebeauty/f;
.super Lcom/oplus/camera/ui/menu/facebeauty/d;
.source "FaceBeautyCustomMenu.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/facebeauty/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/facebeauty/f$a;
    }
.end annotation


# static fields
.field private static final A:[I

.field private static final B:[I

.field private static final C:[I

.field private static final z:[I


# instance fields
.field private D:I

.field private E:Lcom/oplus/camera/ui/menu/facebeauty/c;

.field private F:Lcom/oplus/camera/ui/menu/facebeauty/c;

.field private G:Landroid/view/View;

.field private H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

.field private I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

.field private J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

.field private K:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private L:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private M:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/facebeauty/b;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/facebeauty/b;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/facebeauty/b;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Landroid/widget/RelativeLayout$LayoutParams;

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:Z

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private ae:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

.field private af:Landroid/view/GestureDetector;

.field private ag:Lcom/oplus/camera/ui/menu/facebeauty/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 39
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oplus/camera/ui/menu/facebeauty/f;->z:[I

    .line 40
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->A:[I

    const/16 v0, 0xe

    .line 41
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/oplus/camera/ui/menu/facebeauty/f;->B:[I

    .line 42
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->C:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x32
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x64
        0x64
        0x64
        0x32
        0x64
        0x64
        0x64
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;Lcom/oplus/camera/ui/menu/facebeauty/f$a;Lcom/oplus/camera/ui/OplusNumSeekBar$a;Lcom/oplus/camera/ui/menu/facebeauty/d$a;Lcom/oplus/camera/ui/preview/a/f;II)V
    .locals 7

    .line 79
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/d;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->D:I

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    .line 47
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    .line 48
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    .line 49
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 50
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 51
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 53
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 54
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 55
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    .line 56
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->O:Ljava/util/ArrayList;

    .line 57
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->R:I

    .line 60
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->S:I

    .line 61
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->T:I

    .line 62
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->U:I

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->V:I

    .line 64
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->W:Z

    .line 65
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->X:I

    .line 66
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Y:I

    .line 67
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Z:I

    .line 68
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->aa:I

    .line 69
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ab:I

    .line 70
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ac:I

    .line 71
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ad:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 72
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ae:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    .line 73
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->af:Landroid/view/GestureDetector;

    .line 75
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ag:Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070482

    .line 81
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->R:I

    const v3, 0x7f07072e

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Z:I

    const v3, 0x7f070733

    .line 83
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->aa:I

    const v3, 0x7f070485

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->S:I

    const v3, 0x7f07045f

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->U:I

    const v3, 0x7f07048c

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ac:I

    const v3, 0x7f070486

    .line 87
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->T:I

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070494

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->v:I

    .line 89
    iput-object p5, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    .line 90
    iput-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ag:Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    .line 91
    iput-object p4, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ae:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    .line 92
    iput p7, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->w:I

    .line 93
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->y:Landroid/app/Activity;

    .line 94
    iput p8, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->x:I

    .line 95
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(Landroid/app/Activity;)I

    move-result p4

    iput p4, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->D:I

    .line 97
    new-instance p4, Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-direct {p4, p1}, Lcom/oplus/camera/ui/menu/facebeauty/c;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    .line 98
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {p4, p7}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(I)V

    .line 99
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->E()Ljava/util/List;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Ljava/util/List;)V

    .line 100
    iget-object p4, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {p4, p3}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Lcom/oplus/camera/ui/menu/facebeauty/f$a;)V

    .line 101
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {p3, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0, p7, p8}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(II)I

    move-result p2

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    .line 106
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    const p3, 0x7f090389

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->a:Landroid/widget/LinearLayout;

    .line 107
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    const p3, 0x7f090170

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/OplusNumAISeekBar;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 108
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(Lcom/oplus/camera/ui/OplusNumAISeekBar;)V

    .line 109
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 111
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    const p3, 0x7f090167

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 p2, 0x1

    if-ne p2, p7, :cond_0

    move v6, p2

    goto :goto_0

    :cond_0
    move v6, v0

    .line 114
    :goto_0
    new-instance p2, Lcom/oplus/camera/ui/menu/facebeauty/f$1;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v4, v6

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/ui/menu/facebeauty/f$1;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/f;Landroid/content/Context;IZZ)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 126
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 127
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 128
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setVisibility(I)V

    .line 129
    iput-object p6, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->n:Lcom/oplus/camera/ui/preview/a/f;

    return-void
.end method

.method private C()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f09016d

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 169
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(Lcom/oplus/camera/ui/OplusNumAISeekBar;)V

    .line 170
    new-instance v0, Lcom/oplus/camera/ui/menu/facebeauty/c;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->x()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ag:Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Lcom/oplus/camera/ui/menu/facebeauty/f$a;)V

    .line 174
    new-instance v0, Lcom/oplus/camera/ui/menu/facebeauty/f$2;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f$2;-><init>(Lcom/oplus/camera/ui/menu/facebeauty/f;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ad:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 182
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ad:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ab:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c;->b(I)V

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyDataSetChanged()V

    .line 189
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ad:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ab:I

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->D()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private D()I
    .locals 2

    .line 203
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->aa:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ac:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private E()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/facebeauty/b;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    .line 469
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f100145

    const v3, 0x7f0803f5

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f100144

    const v3, 0x7f0803ee

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000bd

    const v3, 0x7f0803e3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000c0

    const v3, 0x7f0803ec

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000bb

    const v3, 0x7f0803e1

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000c1

    const v3, 0x7f0803ed

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000bc

    const v3, 0x7f0803e2

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000be

    const v3, 0x7f0803e7

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->O:Ljava/util/ArrayList;

    .line 488
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 489
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->O:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000bf

    const v3, 0x7f0803e8

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->O:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000ba

    const v3, 0x7f0803dd

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->W:Z

    if-nez v0, :cond_1

    .line 497
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->N:Ljava/util/ArrayList;

    return-object p0

    .line 499
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->O:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(I[I[I[I)V
    .locals 2

    .line 451
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->w()I

    move-result v0

    if-ltz v0, :cond_2

    .line 453
    array-length v1, p4

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, -0x186a0

    if-ne p1, v1, :cond_1

    .line 458
    aget p1, p2, v0

    .line 461
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    aget p3, p3, v0

    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    move-result-object p0

    aget p3, p4, v0

    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    move-result-object p0

    aget p2, p2, v0

    .line 462
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/OplusNumSeekBar;->d(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->c(I)Lcom/oplus/camera/ui/OplusNumSeekBar;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method private varargs a(I[Landroid/view/View;)V
    .locals 3

    .line 679
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p2, v0

    .line 680
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 681
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/oplus/camera/ui/OplusNumAISeekBar;)V
    .locals 3

    .line 149
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ae:Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setOnProgressChangedListener(Lcom/oplus/camera/ui/OplusNumSeekBar$a;)V

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setFrontStyle(Z)V

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f0706a5

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    float-to-int v0, v0

    .line 153
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setmThumbTextShadowBlur(I)V

    .line 154
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setmThumbTextShadowColor(I)V

    return-void
.end method

.method private b(II)I
    .locals 0

    const/4 p0, 0x1

    if-ne p0, p1, :cond_1

    const/16 p0, 0x10e

    if-ne p0, p2, :cond_0

    const p0, 0x7f0c00cf

    return p0

    :cond_0
    const p0, 0x7f0c00ce

    return p0

    :cond_1
    const/4 p0, 0x3

    if-ne p0, p1, :cond_2

    const p0, 0x7f0c00cd

    return p0

    :cond_2
    const/4 p0, 0x4

    if-ne p0, p1, :cond_3

    const p0, 0x7f0c00ca

    return p0

    :cond_3
    const p0, 0x7f0c00c7

    return p0
.end method

.method private b(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A()Lcom/oplus/camera/ui/OplusNumAISeekBar;
    .locals 0

    .line 569
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    return-object p0
.end method

.method public B()V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setVisibility(I)V

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setVisibility(I)V

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    if-eqz v0, :cond_2

    .line 703
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setVisibility(I)V

    .line 706
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz p0, :cond_3

    .line 707
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public a(Landroid/app/Activity;)I
    .locals 1

    .line 158
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->w:I

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070548

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    .line 161
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result p0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07049c

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public a(II)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 411
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/16 v1, 0xc

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v0, p1, :cond_1

    .line 414
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->y:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0709de

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-direct {p1, p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    .line 416
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 417
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 418
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->y:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0709df

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, v3, v3, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 420
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    goto :goto_0

    .line 422
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    .line 424
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 425
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->D:I

    invoke-virtual {p1, v3, v3, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 428
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->e:I

    .line 434
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->m(Z)V

    .line 435
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 438
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(IZZ)V
    .locals 12

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectIndex, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scrollToPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMakeup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyCustomMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 264
    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->S:I

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->R:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez p3, :cond_1

    .line 267
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p3, v1}, Lcom/oplus/camera/ui/menu/facebeauty/c;->b(I)V

    .line 268
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->V:I

    if-ltz p1, :cond_0

    .line 271
    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/facebeauty/f;->o(Z)V

    :cond_0
    if-eqz p2, :cond_3

    .line 276
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 277
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 278
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    .line 279
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 280
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    .line 283
    :cond_1
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    if-nez p3, :cond_2

    const-string p3, "setSelectIndex, error! mMakeupAdapter has not been init"

    .line 284
    invoke-static {v1, p3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->C()V

    .line 289
    :cond_2
    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ab:I

    .line 290
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/menu/facebeauty/c;->b(I)V

    if-eqz p2, :cond_3

    .line 294
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 295
    iget-object p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ad:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    .line 296
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ad:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 297
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ad:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 298
    iget-object v7, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ad:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    move v11, v1

    move v1, p1

    move p1, p3

    move p3, v11

    goto :goto_0

    :cond_3
    move-object v6, v3

    move-object v7, v6

    move p1, v4

    move p3, p1

    move v1, p3

    :goto_0
    if-eqz p2, :cond_9

    const/16 p2, 0x1f4

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    sub-int v9, p1, v1

    if-gt v9, v5, :cond_6

    .line 305
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    .line 306
    invoke-virtual {v6, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eq p1, v1, :cond_4

    .line 307
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ge p1, v10, :cond_6

    .line 308
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr p1, v6

    rsub-int/lit8 v6, v9, 0x1

    mul-int/2addr v6, v2

    add-int/2addr p1, v6

    mul-int/lit8 v6, v2, 0x2

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 310
    invoke-virtual {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutDirection()I

    move-result v6

    if-ne v5, v6, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    mul-int/2addr v6, p1

    .line 311
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v6, v8, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_6
    if-eqz v7, :cond_9

    sub-int p1, v1, p3

    if-gt p1, v5, :cond_9

    .line 316
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 317
    invoke-virtual {v7, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eq p3, v1, :cond_7

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge p1, v6, :cond_9

    .line 320
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p3, v1

    add-int/2addr p3, v5

    mul-int/2addr p3, v2

    add-int/2addr p1, p3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 322
    invoke-virtual {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutDirection()I

    move-result p3

    if-ne v5, p3, :cond_8

    goto :goto_2

    :cond_8
    move v4, v5

    :goto_2
    neg-int p1, p1

    mul-int/2addr p1, v4

    .line 323
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, p1, v8, p0, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_9
    return-void
.end method

.method public a(I[I)V
    .locals 2

    .line 443
    sget-object v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->z:[I

    sget-object v1, Lcom/oplus/camera/ui/menu/facebeauty/f;->A:[I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[I[I[I)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public a(ZZZIZ)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFaceBeautyMenu, supportMakeup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportFilterEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supFaceBeauty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", makeupIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportShowCustomAll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyCustomMenu"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->i:Z

    .line 238
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->j:Z

    .line 239
    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->h:Z

    .line 240
    iput p4, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ab:I

    .line 241
    iput-boolean p5, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->W:Z

    .line 243
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->i:Z

    if-eqz p1, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->C()V

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->c()V

    .line 249
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->E()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Ljava/util/List;)V

    .line 250
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ag:Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Lcom/oplus/camera/ui/menu/facebeauty/f$a;)V

    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$n;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 329
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 330
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    .line 331
    iget-object v5, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 332
    iget-object v6, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->L:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 333
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 334
    iget v8, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->S:I

    iget v9, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->R:I

    add-int/2addr v8, v9

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3dcccccd    # 0.1f

    const/4 v12, 0x0

    const v13, 0x3e99999a    # 0.3f

    const/4 v14, 0x1

    if-eqz v5, :cond_4

    sub-int v9, v3, v1

    if-gt v9, v14, :cond_4

    .line 338
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_4

    .line 339
    invoke-virtual {v5, v7}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v17

    if-eqz v17, :cond_4

    if-eq v3, v1, :cond_0

    .line 340
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    if-ge v3, v15, :cond_4

    .line 341
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    rsub-int/lit8 v3, v9, 0x1

    mul-int/2addr v3, v8

    add-int/2addr v1, v3

    if-eqz v2, :cond_1

    .line 345
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->clearOnScrollListeners()V

    .line 346
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 349
    :cond_1
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutDirection()I

    move-result v2

    if-ne v14, v2, :cond_2

    const/16 v16, -0x1

    goto :goto_0

    :cond_2
    move/from16 v16, v14

    .line 350
    :goto_0
    iget-object v0, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    mul-int v2, v1, v16

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v13, v12, v11, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    return v14

    :cond_4
    if-eqz v6, :cond_9

    sub-int v3, v1, v4

    if-gt v3, v14, :cond_9

    .line 358
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    .line 359
    invoke-virtual {v6, v7}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eq v4, v1, :cond_5

    .line 360
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_9

    :cond_5
    if-eqz v2, :cond_6

    .line 363
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->clearOnScrollListeners()V

    .line 364
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 367
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v4, v1

    add-int/2addr v4, v14

    mul-int/2addr v4, v8

    add-int/2addr v2, v4

    .line 369
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutDirection()I

    move-result v1

    if-ne v14, v1, :cond_7

    const/16 v16, -0x1

    goto :goto_2

    :cond_7
    move/from16 v16, v14

    .line 370
    :goto_2
    iget-object v0, v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    neg-int v1, v2

    mul-int v1, v1, v16

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v13, v12, v11, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v14, v5

    :goto_3
    return v14

    :cond_9
    const/4 v5, 0x0

    return v5
.end method

.method public b(I[I)V
    .locals 2

    .line 447
    sget-object v0, Lcom/oplus/camera/ui/menu/facebeauty/f;->B:[I

    sget-object v1, Lcom/oplus/camera/ui/menu/facebeauty/f;->C:[I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[I[I[I)V

    return-void
.end method

.method protected e(Z)V
    .locals 4

    .line 574
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->e:I

    const/4 v1, 0x1

    .line 575
    iput v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->e:I

    .line 576
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->l()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->b(Z)V

    .line 577
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 578
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setThumbOnDragging(Z)V

    .line 580
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->i(Z)V

    .line 584
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->l(Z)V

    .line 588
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->V:I

    if-ltz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->q:Landroid/animation/Animator;

    .line 590
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->p:Landroid/animation/Animator;

    .line 592
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->V:I

    invoke-interface {p1, v0, v3}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(IZ)I

    move-result p1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(Z)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[I)V

    goto :goto_0

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->p:Landroid/animation/Animator;

    const/16 p1, 0x8

    .line 595
    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    aput-object v1, v0, v3

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected f(Z)V
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->p:Landroid/animation/Animator;

    .line 603
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->q:Landroid/animation/Animator;

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    const/4 v0, 0x1

    .line 606
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected g(Z)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->c(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->p:Landroid/animation/Animator;

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->c(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->q:Landroid/animation/Animator;

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    const/4 v0, 0x1

    .line 617
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->I:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected h(Z)V
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setTranslationY(F)V

    .line 624
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setTranslationY(F)V

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setEnabled(Z)V

    .line 626
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->e:I

    const/4 v2, 0x2

    .line 627
    iput v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->e:I

    .line 628
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->l()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->b(Z)V

    .line 629
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ab:I

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/facebeauty/c;->b(I)V

    .line 630
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyDataSetChanged()V

    .line 631
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    .line 632
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setThumbOnDragging(Z)V

    .line 634
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->f(Z)V

    .line 638
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->l(Z)V

    .line 642
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ab:I

    if-lez v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->s:Landroid/animation/Animator;

    .line 644
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->r:Landroid/animation/Animator;

    .line 645
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->ab:I

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(IZ)I

    move-result p1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->o:Lcom/oplus/camera/ui/menu/facebeauty/d$a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/d$a;->a(Z)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(I[I)V

    goto :goto_0

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->r:Landroid/animation/Animator;

    const/16 p1, 0x8

    .line 648
    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    aput-object v1, v0, v3

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected i(Z)V
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->r:Landroid/animation/Animator;

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->s:Landroid/animation/Animator;

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    const/4 v0, 0x1

    .line 661
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected j(Z)V
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->M:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->c(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->r:Landroid/animation/Animator;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->c(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->s:Landroid/animation/Animator;

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    const/4 v0, 0x1

    .line 674
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->J:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(I[Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(ZZ)V

    return-void
.end method

.method public q()Landroid/view/View;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->a:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public s()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyDataSetChanged()V

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    if-eqz p0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public t()Z
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 381
    iget p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->U:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public u()V
    .locals 1

    .line 388
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 389
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setAlpha(F)V

    .line 396
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->H:Lcom/oplus/camera/ui/OplusNumAISeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public w()I
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->F:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a()I

    move-result p0

    return p0

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->E:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    return p0
.end method

.method public x()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/menu/facebeauty/b;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    .line 506
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000ca

    const v3, 0x7f0803ee

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000d1

    const v3, 0x7f0804ec

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000cb

    const v3, 0x7f0804e9

    invoke-direct {v1, v2, v3, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.oplus.feature.custom.makeup.type.snow.support"

    .line 513
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000da

    const v3, 0x7f0804f0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000c4

    const v3, 0x7f0804e5

    invoke-direct {v1, v2, v3, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000cd

    const v3, 0x7f0804ea

    invoke-direct {v1, v2, v3, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000cf

    const v3, 0x7f0804eb

    invoke-direct {v1, v2, v3, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.oplus.feature.custom.makeup.type.dream.support"

    .line 525
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000c2

    const v3, 0x7f0804e4

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000d7

    const v3, 0x7f0804f1

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000dc

    const v3, 0x7f0804f2

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000c8

    const v3, 0x7f0804e7

    invoke-direct {v1, v2, v3, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000de

    const v3, 0x7f0804f5

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000d3

    const v3, 0x7f0804ef

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/camera/ui/menu/facebeauty/b;

    const v2, 0x7f1000c6

    const v3, 0x7f0804e6

    invoke-direct {v1, v2, v3, v5}, Lcom/oplus/camera/ui/menu/facebeauty/b;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->P:Ljava/util/ArrayList;

    return-object p0
.end method

.method public y()Landroid/view/View;
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->G:Landroid/view/View;

    return-object p0
.end method

.method public z()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/f;->K:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method
