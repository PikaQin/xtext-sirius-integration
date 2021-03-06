/**
 * Copyright (C) 2018 Altran Netherlands B.V.
 * 
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package com.altran.general.integration.xtextsirius.editor.ui.internal.suffixtext;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.sirius.editor.editorPlugin.SiriusEditor;
import org.eclipse.sirius.editor.properties.sections.common.AbstractMultilinePropertySection;
import org.eclipse.sirius.editor.tools.api.assist.TypeContentProposalProvider;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.views.properties.tabbed.TabbedPropertySheetPage;

import com.altran.general.integration.xtextsirius.model.xtext.xtextsirius.XtextsiriusPackage;

public class XtextValueDescriptionSuffixTextPropertySection extends AbstractMultilinePropertySection {

	@Override
	protected boolean isEqual(final String newText) {
		return getFeatureAsText().equals(newText);
	}

	@Override
	protected EAttribute getFeature() {
		return XtextsiriusPackage.eINSTANCE.getIXtextValueDescription_SuffixTextExpression();
	}

	@Override
	protected String getPropertyDescription() {
		return "";
	}

	@Override
	protected Object getFeatureValue(final String newText) {
		return newText;
	}

	@Override
	protected String getDefaultLabelText() {
		return "Suffix Text Expression";
	}

	@Override
	protected String getLabelText() {
		return super.getLabelText() + ":";
	}

	@Override
	public void createControls(final Composite parent, final TabbedPropertySheetPage tabbedPropertySheetPage) {
		super.createControls(parent, tabbedPropertySheetPage);

		/*
		 * We set the color as it's a InterpretedExpression
		 */
		this.text.setBackground(SiriusEditor.getColorRegistry().get("yellow")); //$NON-NLS-1$

		TypeContentProposalProvider.bindPluginsCompletionProcessors(this, this.text);

		final FormData data = new FormData();
		data.top = new FormAttachment(this.text, 0, SWT.TOP);
		data.left = new FormAttachment(this.nameLabel);
	}

}
