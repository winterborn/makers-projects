# initial password manager data strucuture in hash

{
    "acebook" => "password123"
    "makersbnb" => "hadjhad131213*"
}

# how to add in the date on which a password was added?

{
    "acebook" => "password123"
    "acebook_added" => '29/07/22'
    "makersbnb" => "hadjhad131213*"
    "makersbnb_added" => '29/07/22'
}

# ideally want to group together respective information as messy

password = {
    "acebook" => "password123"
    "acebook_added" => '29/07/22'
    "makersbnb" => "hadjhad131213*"
    "makersbnb_added" => '29/07/22'
}

password['acebook']
password['acebook_added']

# ok but laborious