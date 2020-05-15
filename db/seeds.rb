# User.destroy_all
# Note.destroy_all

# users_list = [
#     "John"
# ]

User.delete_all
Note.delete_all
Tag.delete_all
NotesTag.delete_all


user_a = User.create(username: "usera", password: "a")
user_b = User.create(username: "userb", password: "b")
user_c = User.create(username: "userc", password: "c")

 
note_a = Note.create(title: "A My Note Title", note: "A My Note Description", user: user_a)
note_b = Note.create(title: "B My Note Title", note: "B My Note Description", user: user_b)
note_c = Note.create(title: "C My Note Title", note: "C My Note Description", user: user_c)

tag_a = Tag.create(name: "A Note Tag")
tag_b = Tag.create(name: "B Note Tag")
tag_c = Tag.create(name: "C Note Tag")

# p note_a
# p tag_a
notes_tag_a = NotesTag.create(note: note_a, tag: tag_a)
notes_tag_b = NotesTag.create(note: note_b, tag: tag_b)
notes_tag_c = NotesTag.create(note: note_a, tag: tag_b)
notes_tag_d = NotesTag.create(note: note_b, tag: tag_a)
notes_tag_e = NotesTag.create(note: note_c, tag: tag_a)
