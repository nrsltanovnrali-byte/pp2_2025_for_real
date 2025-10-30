import pygame

pygame.init()
pygame.mixer.init()

playlist = [
    "Playboi Carti - 2024.mp3",
    "Travis Scott - Da Wizard.mp3",
    "The Weeknd & Playboi Carti - Timeless.mp3"
]
current_song = 0

def play_music():
    pygame.mixer.music.load(playlist[current_song])
    pygame.mixer.music.play()

def stop_music():
    pygame.mixer.music.stop()

def next_song():
    global current_song
    current_song = (current_song + 1) % len(playlist)
    play_music()

def prev_song():
    global current_song
    current_song = (current_song - 1) % len(playlist)
    play_music()

screen = pygame.display.set_mode((400, 300))
pygame.display.set_caption("Music Player")
font = pygame.font.Font(None, 28)

running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_RETURN:  # ENTER
                play_music()
            elif event.key == pygame.K_q:
                stop_music()
            elif event.key == pygame.K_d:
                next_song()
            elif event.key == pygame.K_a:
                prev_song()

    screen.fill((30, 30, 30))

    text = font.render(f"Playing: {playlist[current_song]}", True, (255, 255, 255))
    screen.blit(text, (20, 130))

    help_text = font.render("ENTER=Play  Q=Stop  A=Prev  D=Next", True, (200, 200, 200))
    screen.blit(help_text, (20, 260))

    pygame.display.flip()

pygame.quit()
