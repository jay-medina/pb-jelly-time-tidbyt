"""
  Banana Dancing
  unwillingly-affirming-important-jackrabbit-0bc
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
    animate_boxes = render.Animation(
        children = [
            first_frame(),
            second_frame(),
        ],
    )

    return render.Root(
        delay = 500,
        child = render.Box(
            color = BLACK,
            # child = second_frame(),
            child = animate_boxes,
        ),
    )

def first_frame():
    return render.Column(
        expanded = True,
        main_align = "end",
        cross_align = "start",
        children = [
            # --------------------------
            # Forehead
            render.Row(
                children = [
                    renderSection(9, BLACK),
                    renderSection(2, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(4, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(1, BORDER),
                    renderSection(2, DARK_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(1, BORDER),
                    renderSection(1, DARK_YELLOW),
                    renderSection(1, YELLOW),
                    renderSection(2, BORDER),
                ],
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(2, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                ],
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ],
            ),
            render.Row(
                children = [
                    renderSection(6, BLACK),
                    renderSection(5, BORDER),
                    renderSection(2, YELLOW),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                ]
            ),
            # --------------------------
            # Eyes
            render.Row(
                children = [
                    renderSection(5, BLACK),
                    renderSection(1, BORDER),
                    renderSection(1, WHITE),
                    renderSection(1, BORDER),
                    renderSection(3, WHITE),
                    renderSection(1, BORDER),
                    renderSection(1, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(5, BLACK),
                    renderSection(4, BORDER),
                    renderSection(2, WHITE),
                    renderSection(1, BORDER),
                    renderSection(1, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(5, BLACK),
                    renderSection(1, BORDER),
                    renderSection(1, WHITE),
                    renderSection(1, BORDER),
                    renderSection(3, WHITE),
                    renderSection(1, BORDER),
                    renderSection(1, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(6, BLACK),
                    renderSection(5, BORDER),
                    renderSection(2, YELLOW),
                    renderSection(1, BORDER),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            # --------------------------
            # Mouth
            render.Row(
                children = [
                    renderSection(7, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(3, BORDER),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(7, BLACK),
                    renderSection(4, BORDER),
                    renderSection(2, RED),
                    renderSection(1, BORDER),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, RED),
                    renderSection(1, BORDER),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(1, BORDER),
                    renderSection(1, RED),
                    renderSection(2, BORDER),
                    renderSection(1, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(7, BLACK),
                    renderSection(3, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            # --------------------------
            # arms
            render.Row(
                children = [
                    renderSection(1, BLACK),
                    renderSection(3, BORDER),
                    renderSection(3, BLACK),
                    renderSection(1, BORDER),
                    renderSection(4, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                    renderSection(1, BLACK),
                    renderSection(3, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BORDER),
                    renderSection(2, WHITE),
                    renderSection(2, BORDER),
                    renderSection(1, BLACK),
                    renderSection(2, BORDER),
                    renderSection(4, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                    renderSection(1, BLACK),
                    renderSection(2, BORDER),
                    renderSection(2, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BORDER),
                    renderSection(3, WHITE),
                    renderSection(1, BORDER),
                    renderSection(1, BLACK),
                    renderSection(1, BORDER),
                    renderSection(4, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                    renderSection(1, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BORDER),
                    renderSection(2, WHITE),
                    renderSection(2, BORDER),
                    renderSection(1, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(3, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                    renderSection(2, BLACK),
                    renderSection(2, BORDER),
                    renderSection(2, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BLACK),
                    renderSection(3, BORDER),
                    renderSection(1, BLACK),
                    renderSection(2, BORDER),
                    renderSection(2, YELLOW),
                    renderSection(3, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                    renderSection(2, BLACK),
                    renderSection(4, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(3, BLACK),
                    renderSection(1, BORDER),
                    renderSection(1, BLACK),
                    renderSection(1, BORDER),
                    renderSection(2, YELLOW),
                    renderSection(3, MUSTARD_YELLOW),
                    renderSection(3, BORDER),
                    renderSection(1, BLACK),
                    renderSection(2, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(3, BLACK),
                    renderSection(4, BORDER),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(3, BORDER),
                    renderSection(1, BLACK),
                    renderSection(3, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(2, BLACK),
                    renderSection(13, BORDER),
                ]
            ),
            # --------------------------
            # shoes
            render.Row(
                children = [
                    renderSection(1, BLACK),
                    renderSection(3, BORDER),
                    renderSection(8, BLACK),
                    renderSection(4, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BORDER),
                    renderSection(3, WHITE),
                    renderSection(3, BORDER),
                    renderSection(3, BLACK),
                    renderSection(3, BORDER),
                    renderSection(3, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BORDER),
                    renderSection(5, WHITE),
                    renderSection(1, BORDER),
                    renderSection(3, BLACK),
                    renderSection(1, BORDER),
                    renderSection(5, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BLACK),
                    renderSection(6, BORDER),
                    renderSection(3, BLACK),
                    renderSection(6, BORDER),
                ]
            ),
        ],
    )

def second_frame():
    return render.Column(
        expanded = True,
        main_align = "end",
        cross_align = "start",
        children = [
            # --------------------------
            # Forehead
            render.Row(
                children = [
                    renderSection(11, BLACK),
                    renderSection(2, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(10, BLACK),
                    renderSection(4, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(10, BLACK),
                    renderSection(1, BORDER),
                    renderSection(2, DARK_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(10, BLACK),
                    renderSection(1, BORDER),
                    renderSection(1, DARK_YELLOW),
                    renderSection(1, YELLOW),
                    renderSection(2, BORDER),
                ],
            ),
            render.Row(
                children = [
                    renderSection(10, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(2, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(10, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                ],
            ),
            render.Row(
                children = [
                    renderSection(10, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ],
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(5, BORDER),
                    renderSection(2, YELLOW),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                ]
            ),
            # --------------------------
            # Eyes
            render.Row(
                children = [
                    renderSection(7, BLACK),
                    renderSection(1, BORDER),
                    renderSection(1, WHITE),
                    renderSection(1, BORDER),
                    renderSection(3, WHITE),
                    renderSection(1, BORDER),
                    renderSection(1, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(7, BLACK),
                    renderSection(4, BORDER),
                    renderSection(2, WHITE),
                    renderSection(1, BORDER),
                    renderSection(1, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(7, BLACK),
                    renderSection(1, BORDER),
                    renderSection(1, WHITE),
                    renderSection(1, BORDER),
                    renderSection(3, WHITE),
                    renderSection(1, BORDER),
                    renderSection(1, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(8, BLACK),
                    renderSection(5, BORDER),
                    renderSection(2, YELLOW),
                    renderSection(1, BORDER),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            # --------------------------
            # Mouth
            render.Row(
                children = [
                    renderSection(9, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(3, BORDER),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(9, BLACK),
                    renderSection(4, BORDER),
                    renderSection(2, RED),
                    renderSection(1, BORDER),
                    renderSection(1, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(10, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, RED),
                    renderSection(1, BORDER),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(10, BLACK),
                    renderSection(1, BORDER),
                    renderSection(1, RED),
                    renderSection(2, BORDER),
                    renderSection(1, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(9, BLACK),
                    renderSection(3, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BLACK),
                    renderSection(3, BORDER),
                    renderSection(5, BLACK),
                    renderSection(1, BORDER),
                    renderSection(5, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                    renderSection(3, BLACK),
                    renderSection(3, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BORDER),
                    renderSection(2, WHITE),
                    renderSection(2, BORDER),
                    renderSection(4, BLACK),
                    renderSection(1, BORDER),
                    renderSection(4, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                    renderSection(2, BLACK),
                    renderSection(2, BORDER),
                    renderSection(2, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BORDER),
                    renderSection(3, WHITE),
                    renderSection(1, BORDER),
                    renderSection(3, BLACK),
                    renderSection(2, BORDER),
                    renderSection(4, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(1, BORDER),
                    renderSection(3, BLACK),
                    renderSection(1, BORDER),
                    renderSection(3, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BORDER),
                    renderSection(2, WHITE),
                    renderSection(2, BORDER),
                    renderSection(3, BLACK),
                    renderSection(1, BORDER),
                    renderSection(4, YELLOW),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                    renderSection(3, BLACK),
                    renderSection(2, BORDER),
                    renderSection(2, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(1, BLACK),
                    renderSection(5, BORDER),
                    renderSection(1, BLACK),
                    renderSection(2, BORDER),
                    renderSection(3, YELLOW),
                    renderSection(3, MUSTARD_YELLOW),
                    renderSection(3, BORDER),
                    renderSection(1, BLACK),
                    renderSection(5, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(5, BLACK),
                    renderSection(4, BORDER),
                    renderSection(2, YELLOW),
                    renderSection(3, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                    renderSection(1, BLACK),
                    renderSection(3, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(7, BLACK),
                    renderSection(1, BORDER),
                    renderSection(2, YELLOW),
                    renderSection(3, MUSTARD_YELLOW),
                    renderSection(2, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(6, BLACK),
                    renderSection(3, BORDER),
                    renderSection(2, MUSTARD_YELLOW),
                    renderSection(3, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(5, BLACK),
                    renderSection(7, BORDER),
                    renderSection(1, BLACK),
                    renderSection(2, BORDER),
                ]
            ),
            # -----------
            # Legs
            render.Row(
                children = [
                    renderSection(5, BLACK),
                    renderSection(1, BORDER),
                    renderSection(8, BLACK),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(3, BLACK),
                    renderSection(4, BORDER),
                    renderSection(7, BLACK),
                    renderSection(4, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(2, BLACK),
                    renderSection(1, BORDER),
                    renderSection(4, WHITE),
                    renderSection(2, BORDER),
                    renderSection(3, BLACK),
                    renderSection(2, BORDER),
                    renderSection(4, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(2, BLACK),
                    renderSection(1, BORDER),
                    renderSection(5, WHITE),
                    renderSection(1, BORDER),
                    renderSection(3, BLACK),
                    renderSection(1, BORDER),
                    renderSection(5, WHITE),
                    renderSection(1, BORDER),
                ]
            ),
            render.Row(
                children = [
                    renderSection(3, BLACK),
                    renderSection(5, BORDER),
                    renderSection(5, BLACK),
                    renderSection(5, BORDER),
                ]
            )
        ]
    );

def renderSection(width, color):
    return render.Box(width = width, height = 1, color = color)
