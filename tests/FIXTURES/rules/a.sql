create table accounts (
    id integer,
    manager text,
    secret text
);

create rule protect_accounts as
    on update to accounts
    where old.manager <> current_user
    do instead nothing;
