mongoose = require('mongoose')

import Table from './table'
import logger from '../log'

problemsSchema = new mongoose.Schema
    _id: String
    letter: String
    name: String
    tables: [String]
    level: String

problemsSchema.methods.add = () ->
    _debug_marker = {qwe: '1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1'}
    oldProblem = await Problem.findById @_id
    if oldProblem
        return
    @save()

problemsSchema.methods.addTable = (table) ->
    logger.debug "add table", @name, @tables
    if table in @tables
        return
    @tables.push(table)
    _debug_marker = {qwe: '2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2'}
    await @update({$set: { tables: @tables }})
    _debug_marker = {qwe: '3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3_3'}
    (await Problem.findById(@_id)).updateLevel()

problemsSchema.methods.updateLevel = ->
    reg = ""
    @level = ""
    for table in @tables
        _debug_marker = {qwe: '4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4_4'}
        level = (await Table.findById(table)).parent
        if (level.slice(0,3) == "reg") and (reg < level)
            reg = level
        else if level > @level
            @level = level
    if @level == ""
        @level = reg
    if @level == ""
        @level = undefined
    @update({$set: {level: @level}})

problemsSchema.statics.findByLevel = (level) ->
    return Problem.find
        level: level

Problem = mongoose.model('Problems', problemsSchema);

export default Problem
