import os

def DirectoryOfThisScript():
    return os.path.dirname(os.path.abspath(__file__))

includes = [
]

includes = ['-I' + DirectoryOfThisScript() + '/' + x for x in includes]

flags = [
    '-Wall',
    '-Wextra',
    '-std=c99',
] + includes

# youcompleteme is calling this function to get flags
# You can also set database for flags. Check: JSONCompilationDatabase.html in
# clang-3.2-doc package
def FlagsForFile(filename):
    return {'flags': flags, 'do_cache': True}
