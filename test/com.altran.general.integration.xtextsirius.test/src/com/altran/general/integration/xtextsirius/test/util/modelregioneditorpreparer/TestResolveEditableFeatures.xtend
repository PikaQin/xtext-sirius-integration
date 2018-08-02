package com.altran.general.integration.xtextsirius.test.util.modelregioneditorpreparer

import org.junit.Test

import static org.junit.Assert.*

class TestResolveEditableFeatures extends AModelRegionEditorPreparer {
	@Test
	def emptyFeatures() {
		val model = defaultModel
		
		val event = model.events.get(0)
		
		val preparer = new AccessibleModelRegionEditorPreparer(injector, event)
		
		val resolved = preparer.resolveEditableFeatures(event)
		
		assertEquals(0, resolved.size)
	}

	@Test
	def invalidFeatures() {
		val model = defaultModel
		
		val event = model.events.get(0)
		
		val preparer = new AccessibleModelRegionEditorPreparer(injector, event)
		preparer.editableFeatures = #{"some", "feature"}
		
		val resolved = preparer.resolveEditableFeatures(event)
		
		assertEquals(0, resolved.size)
	}

	@Test
	def someInvalidFeatures() {
		val model = defaultModel
		
		val event = model.events.get(0)
		
		val preparer = new AccessibleModelRegionEditorPreparer(injector, event)
		preparer.editableFeatures = #{"name", "some", "guard", "cond"}
		
		val resolved = preparer.resolveEditableFeatures(event)
		
		assertEquals(resolved.toString, 2, resolved.size)
		assertNotNull(resolved.findFirstByName("name"))
		assertNotNull(resolved.findFirstByName("guard"))
	}

	@Test
	def validFeatures() {
		val model = defaultModel
		
		val event = model.events.get(0)
		
		val preparer = new AccessibleModelRegionEditorPreparer(injector, event)
		preparer.editableFeatures = #{"name", "guard"}
		
		val resolved = preparer.resolveEditableFeatures(event)
		
		assertEquals(resolved.toString, 2, resolved.size)
		assertNotNull(resolved.findFirstByName("name"))
		assertNotNull(resolved.findFirstByName("guard"))
	}

}
