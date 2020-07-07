const db = require("../db-config");

function find() {
  return db("schemes").select("*");
}

function findById(id) {
  console.log(id);
  return db("schemes").where({ id }).first();
}

function findSteps(id) {
  console.log(id);
  return db("schemes as sc")
    .join("steps as s")
    .select("sc.scheme_name", "s.step_number", "s.instructions")
    .where("sc.id", id)
    .orderBy("s.step_number");
}

function add(scheme) {
  return db("schemes").insert(scheme);
}

function update(id, changes) {
  db("schemes").where({ id }).update(changes);
}

function remove(id) {
  db("schemes").where({ id }).del();
}

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove,
};
