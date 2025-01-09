Random Word Generator Flutter App
This is a simple Flutter application that generates random word pairs, allows users to like and unlike them, and saves their favorite word pairs on another page.

Features
Random Word Generation: The app uses the english_words package to generate random word pairs.
Like and Unlike Words: Users can like (save) and unlike (remove) the word pairs they like.
Saved Words Screen: A separate screen to view the liked word pairs.
Interactive UI: An interactive UI with a list of word pairs where you can tap on the heart icon to toggle the saved status.
How it Works
Word Generation:
The app generates random word pairs using the generateWordPairs() method from the english_words package. These word pairs are displayed in a list on the main screen.

Like/Unlike Words:
Each word pair has a heart icon on the right side. Tapping the heart icon toggles the "liked" state of the word pair. If the word pair is liked, the heart turns red, and it is added to the savedWordPairs list.

Saving Liked Words:
Liked word pairs are stored in a Set called savedWordPairs. This list contains all the word pairs the user has saved.

Saved Words Screen:
When the user taps on the list icon in the app bar, the app navigates to a new screen where the saved word pairs are displayed. The saved words are shown in a list, and users can tap on them again if they wish to remove them from the saved list.

Screenshots
![Screenshot (1)](https://github.com/user-attachments/assets/8d57fbe0-f2cb-4a78-8cd1-cdffd199a95e)
![Screenshot (2)](https://github.com/user-attachments/assets/fcb9e18d-c9de-422d-9773-5deea35a1ce1)
![Screenshot (3)](https://github.com/user-attachments/assets/026e858f-b862-4285-b50e-e79d2ecfab12)

Code Walkthrough
RandomWords Widget:
This is the main widget that generates the random word pairs and displays them in a list. Users can interact with the word pairs by liking or unliking them.

buildlist() Function:
The list of word pairs is displayed using a ListView.builder. The list is populated with new word pairs as the user scrolls.

buildrow() Function:
Each word pair is displayed in a ListTile with a heart icon to indicate whether the word is liked. The heart icon toggles between a filled and empty state when the user taps on it.

Saved Word Pairs Screen:
When the user taps on the "list" icon in the app bar, the app navigates to the saved word pairs screen. The saved words are displayed in a list on this screen.

Dependencies
Flutter: SDK for building the app.
english_words: A package for generating random word pairs.
License
This project is licensed under the MIT License. See the LICENSE file for more details.

Contact
If you have any questions or suggestions, feel free to reach out to LeuxSenpai.

This README gives a good overview of your app and its functionality. You can modify the details further or add any additional information as needed! Let me know if you need anything else. 😊
