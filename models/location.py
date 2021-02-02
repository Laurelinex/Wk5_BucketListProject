class Location:

    def __init__(self, name, description, zone, category, picture = "", lockdown_friendly = False, free = False, visited = False, id = None):
        self.name = name
        self.description = description
        self.zone = zone
        self.category = category
        self.picture = picture
        self.lockdown_friendly = lockdown_friendly
        self.free = free
        self.visited = visited
        self.id = id

    def mark_visited(self):
        self.visited = True

    def add_picture(self, picture_url):
        self.picture = picture_url