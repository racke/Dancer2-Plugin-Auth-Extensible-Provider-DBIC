package t::lib::Schema::Result::User;
use base qw/DBIx::Class::Core/;
__PACKAGE__->table('user');
__PACKAGE__->add_columns(
    id       => { data_type => 'integer' },
    username => { data_type => 'varchar', size => 32 },
    password => { data_type => 'varchar', size => 40 },
    name     => { data_type => 'varchar', size => 128, is_nullable => 1 },
    pw_reset_code => { data_type => 'varchar', size => 255, is_nullable => 1 },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->has_many(
    user_roles => "t::lib::Schema::Result::UserRole",
    "user_id"
);
1;
