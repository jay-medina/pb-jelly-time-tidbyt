"""
  Banana Dancing
"""

load("render.star", "render")

BLACK = "#000"
BORDER = "#555"
WHITE = "#FFF"
DARK_YELLOW = "#9C9C30"
YELLOW = "#FFFF54"
MUSTARD_YELLOW = "#CECE42"
RED = "#EA3323"

def main():
    boxes = render.Animation(
        children = [
            render.Box(width = 10, height = 10, color = "#300"),
            render.Box(width = 12, height = 12, color = "#500"),
            render.Box(width = 14, height = 14, color = "#700"),
            render.Box(width = 16, height = 16, color = "#900"),
            render.Box(width = 18, height = 18, color = "#b00"),
            render.Box(width = 18, height = 18, color = "#b00"),
            render.Box(width = 16, height = 16, color = "#900"),
            render.Box(width = 14, height = 14, color = "#700"),
            render.Box(width = 12, height = 12, color = "#500"),
            render.Box(width = 10, height = 10, color = "#300"),
        ],
    )

    return render.Root(
        delay = 500,
        child = render.Box(
            child = first_frame(),
        ),
    )

def first_frame():
    return render.Column(
        expanded = True,
        main_align = "center",
        cross_align = "start",
        children = [
            # --------------------------
            # Forehead
            render.Row(
                children = [
                    render.Box(width = 9, height = 1, color = BLACK),
                    render.Box(width = 2, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 8, height = 1, color = BLACK),
                    render.Box(width = 4, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 8, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = DARK_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 8, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = DARK_YELLOW),
                    render.Box(width = 1, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = BORDER),
                ],
            ),
            render.Row(
                children = [
                    render.Box(width = 8, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 8, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = YELLOW),
                    render.Box(width = 1, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 2, height = 1, color = BORDER),
                ],
            ),
            render.Row(
                children = [
                    render.Box(width = 8, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ],
            ),
            render.Row(
                children = [
                    render.Box(width = 5, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 5, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = YELLOW),
                    render.Box(width = 1, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 2, height = 1, color = BORDER),
                ]
            ),
            # --------------------------
            # Eyes
            render.Row(
                children = [
                    render.Box(width = 5, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 5, height = 1, color = BLACK),
                    render.Box(width = 4, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 5, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 6, height = 1, color = BLACK),
                    render.Box(width = 5, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            # --------------------------
            # Mouth
            render.Row(
                children = [
                    render.Box(width = 7, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = YELLOW),
                    render.Box(width = 3, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 7, height = 1, color = BLACK),
                    render.Box(width = 4, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = RED),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 8, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = RED),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 8, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = RED),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 7, height = 1, color = BLACK),
                    render.Box(width = 3, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            # --------------------------
            # arms
            render.Row(
                children = [
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 3, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 4, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 3, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = WHITE),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 4, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 4, height = 1, color = YELLOW),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = WHITE),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = YELLOW),
                    render.Box(width = 3, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = BLACK),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 3, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = YELLOW),
                    render.Box(width = 3, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 2, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = BLACK),
                    render.Box(width = 4, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 3, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = YELLOW),
                    render.Box(width = 3, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 3, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 2, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 3, height = 1, color = BLACK),
                    render.Box(width = 4, height = 1, color = BORDER),
                    render.Box(width = 2, height = 1, color = MUSTARD_YELLOW),
                    render.Box(width = 3, height = 1, color = BORDER),
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 3, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 2, height = 1, color = BLACK),
                    render.Box(width = 13, height = 1, color = BORDER),
                ]
            ),
            # --------------------------
            # shoes
            render.Row(
                children = [
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 3, height = 1, color = BORDER),
                    render.Box(width = 8, height = 1, color = BLACK),
                    render.Box(width = 4, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = WHITE),
                    render.Box(width = 3, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = BLACK),
                    render.Box(width = 3, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 5, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = BLACK),
                    render.Box(width = 1, height = 1, color = BORDER),
                    render.Box(width = 5, height = 1, color = WHITE),
                    render.Box(width = 1, height = 1, color = BORDER),
                ]
            ),
            render.Row(
                children = [
                    render.Box(width = 1, height = 1, color = BLACK),
                    render.Box(width = 6, height = 1, color = BORDER),
                    render.Box(width = 3, height = 1, color = BLACK),
                    render.Box(width = 6, height = 1, color = BORDER),
                ]
            ),
        ],
    )
