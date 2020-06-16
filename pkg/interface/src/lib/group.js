const roleTags = ['janitor', 'moderator', 'admin'];

export function roleForShip(group, ship) {
  return roleTags.reduce((currRole, role) => {
    const hasRole = (group?.tags[role] || []).findIndex(s => s === ship) !== -1;
    return hasRole ? role : currRole;
  }, 'member');
}
